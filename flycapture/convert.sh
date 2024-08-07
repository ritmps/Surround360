#!/bin/bash

# Directory containing .deb packages
DEB_DIR="./installers/flycapture2-2.13.3.31-amd64"

# Directory to store converted .rpm packages
RPM_DIR="${DEB_DIR}/RPMs"

# Create RPM_DIR if it doesn't exist
mkdir -p "$RPM_DIR"

# Iterate over each .deb package in DEB_DIR
for deb in "$DEB_DIR"/*.deb; do
    # Check if the file exists and is a regular file
    if [[ -f "$deb" ]]; then
        echo "Converting $deb to .rpm..."
        sudo alien -r --scripts "$deb"
        if [[ $? -ne 0 ]]; then
            echo "Failed to convert $deb"
        else
            # Move the converted .rpm file to RPM_DIR
            rpm_file="${deb%.deb}.rpm" # this isn't right
            mv "$rpm_file" "$RPM_DIR"
            echo "Successfully converted $deb and moved to $RPM_DIR"
        fi
    else
        echo "No .deb files found in $DEB_DIR"
    fi
done

echo "Conversion process completed."