/**
* Copyright (c) 2016-present, Facebook, Inc.
* All rights reserved.
*
* This source code is licensed under the license found in the
* LICENSE_camera_ctl_ui file in the root directory of this subproject.
*/

#pragma once

#include <gtkmm.h>
#include "CameraView.hpp"
#include "ShutterComboBox.hpp"
#include "FramerateComboBox.hpp"

namespace surround360 {
  class PreviewButton : public Gtk::Button {
  public:
    PreviewButton();

  protected:
    void on_clicked() override;

  private:
    bool m_previewing;
  };
}
