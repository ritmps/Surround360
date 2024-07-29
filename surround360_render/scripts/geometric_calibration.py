import argparse
import datetime
import json
import numpy as np
import os
import re
import sqlite3
import subprocess
import sys
import time

from os.path import expanduser
from timeit import default_timer as timer

script_dir = os.path.dirname(os.path.realpath(__file__))

# os.path.dirname(DIR) is the parent directory of DIR
surround360_render_dir = os.path.dirname(script_dir)

TITLE = "Surround 360 - Geometric Calibration"

COLMAP_EXTRACT_TEMPLATE = """
{COLMAP_DIR}/feature_extractor
--General.image_path {IMAGE_PATH}
--General.database_path {COLMAP_DB_PATH}
"""

COLMAP_MATCH_TEMPLATE = """
{COLMAP_DIR}/exhaustive_matcher
--General.database_path {COLMAP_DB_PATH}
"""

GEOMETRIC_CALIBRATION_COMMAND_TEMPLATE = """
{SURROUND360_RENDER_DIR}/bin/GeometricCalibration
--json {RIG_JSON}
--output_json {OUTPUT_JSON}
--matches {MATCHES_JSON}
--pass_count {PASS_COUNT}
--log_dir {LOG_DIR}
--logbuflevel -1
--stderrthreshold 0
{FLAGS_EXTRA}
"""

def parse_args():
  parser = argparse.ArgumentParser(description="geometric calibration")
  parser.add_argument("--data_dir",            help='Directory containing directory of frames', required=True)
  parser.add_argument("--colmap_dir",          help='Path to COLMAP exe directory', required=False, default=expanduser("~") + "/colmap/build/src/exe")
  parser.add_argument("--rig_json",            help='Initial estimate for rig geometry file', required=True)
  parser.add_argument("--output_json",         help='Calibrated rig geometry file', required=True)
  parser.add_argument("--pass_count",          help='Number of passes (higher = more accurate, but slower)', required=False, default=10)
  parser.add_argument('--save_debug_images',   help='save debug images', action='store_true')
  return vars(parser.parse_args())

def features_db_to_json(features_database, matches_json):
  data = {}
  data["images"] = {}
  images = {}

  connection = sqlite3.connect(features_database)
  cursor = connection.cursor()
  cursor.execute("SELECT image_id, camera_id, name FROM images;")
  cursorImage = connection.cursor()

  for row in cursor:
    image_id = row[0]
    image_name = row[2]

    images[image_id] = image_name
    data["images"][image_name] = []

    cursorImage.execute("SELECT data FROM keypoints WHERE image_id=?;", (image_id,))
    for row in cursorImage:
      keypoints = np.fromstring(row[0], dtype=np.uint32).reshape(-1, 4)
      for keypoint in keypoints:
        [x, y, scale, orientation] = keypoint.view(np.float32)
        kpt = {"x":str(x), "y":str(y), "scale":str(scale), "orientation":str(orientation)}
        data["images"][image_name].append(kpt)

  cursorImage.close()

  data["all_matches"] = []
  cursor.execute("SELECT pair_id, data FROM matches;")
  for row in cursor:
    image_pair = {}
    pair_id = row[0]
    inlier_matches = np.fromstring(row[1], dtype=np.uint32).reshape(-1, 2)
    image_id1, image_id2 = pair_id_to_image_ids(pair_id)
    image_name1 = images[image_id1]
    image_name2 = images[image_id2]

    image_pair["image1"] = image_name1
    image_pair["image2"] = image_name2

    matches = []
    for i in range(inlier_matches.shape[0]):
      match = {"idx1":str(inlier_matches[i][0]), "idx2":str(inlier_matches[i][1])}
      matches.append(match)
    image_pair["matches"] = matches
    data["all_matches"].append(image_pair)

  with open(matches_json, 'w') as outfile:
    json.dump(data, outfile, sort_keys=True, indent=4)
  cursor.close()
  connection.close()

def start_subprocess(name, cmd):
  global current_process
  current_process = subprocess.Popen(cmd, shell=True)
  current_process.name = name
  current_process.communicate()

def print_and_save(file_out, str):
  print str
  file_out.write(str)
  sys.stdout.flush()

def save_step_runtime(file_out, step, runtime_sec):
  text_runtime = "\n" + step + " runtime: " + str(datetime.timedelta(seconds=runtime_sec)) + "\n"
  file_out.write(text_runtime)
  print text_runtime
  sys.stdout.flush()

def run_step(step, cmd, file_runtimes):
  print_and_save(file_runtimes, "\n" + cmd + "\n")
  start_time = timer()
  start_subprocess(step, cmd)
  save_step_runtime(file_runtimes, step, timer() - start_time)

def pair_id_to_image_ids(pair_id):
  k8mersenne = 2147483647
  image_id2 = pair_id % k8mersenne
  image_id1 = (pair_id - image_id2) / k8mersenne
  return image_id1, image_id2

if __name__ == "__main__":
  args = parse_args()
  data_dir            = args["data_dir"]
  colmap_dir          = args["colmap_dir"]
  rig_json            = args["rig_json"]
  output_json         = args["output_json"]
  pass_count          = args["pass_count"]
  save_debug_images   = args["save_debug_images"]

  print "\n--------" + time.strftime(" %a %b %d %Y %H:%M:%S %Z ") + "-------\n"

  # Open file (unbuffered)
  file_runtimes = open(data_dir + "/runtimes.txt", 'w', 0)

  start_time = timer()

  print "Extracting features via COLMAP..."
  colmap_db_path = data_dir + "/colmap.db"
  feature_extraction_params = {
    "COLMAP_DIR": re.escape(colmap_dir),
    "IMAGE_PATH": re.escape(data_dir),
    "COLMAP_DB_PATH": re.escape(colmap_db_path),
  }
  feature_extraction_command = COLMAP_EXTRACT_TEMPLATE.replace("\n", " ").format(**feature_extraction_params)
  run_step("feature extraction", feature_extraction_command, file_runtimes)

  print "Matching features via COLMAP..."
  feature_matching_params = {
    "COLMAP_DIR": re.escape(colmap_dir),
    "COLMAP_DB_PATH": re.escape(colmap_db_path),
  }
  feature_matching_command = COLMAP_MATCH_TEMPLATE.replace("\n", " ").format(**feature_matching_params)
  run_step("feature matching", feature_matching_command, file_runtimes)

  print "Converting database to JSON file..."
  matches_json = data_dir + "/matches.json"
  features_db_to_json(colmap_db_path, matches_json)

  log_dir = re.escape(data_dir + "/logs")
  os.system("mkdir -p " + log_dir)

  os.chdir(data_dir)

  print "Running geometric calibration..."
  flags_extra = ""
  if save_debug_images:
    flags_extra += " --debug_matches_overlap 0.2 --save_debug_images"
  calibration_params = {
    "SURROUND360_RENDER_DIR": surround360_render_dir,
    "RIG_JSON": re.escape(rig_json),
    "OUTPUT_JSON": re.escape(output_json),
    "MATCHES_JSON": re.escape(matches_json),
    "PASS_COUNT": pass_count,
    "LOG_DIR": log_dir,
    "FLAGS_EXTRA": flags_extra,
  }
  calibration_command = GEOMETRIC_CALIBRATION_COMMAND_TEMPLATE.replace("\n", " ").format(**calibration_params)
  run_step("calibration", calibration_command, file_runtimes)
  file_runtimes.close()
