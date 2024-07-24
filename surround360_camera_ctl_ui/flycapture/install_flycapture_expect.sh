#!/usr/bin/expect -f
set timeout -1
spawn ./install_flycapture.sh
expect {
    -re "Would you like to continue and install all the FlyCapture2 SDK packages\\? \\(y/n\\).*" {
        send -- "y\r"
        exp_continue
    }
    -re "Would you like to add a udev entry to allow access to IEEE-1394 and USB hardware\\? \\(y/n\\).*" {
        send -- "n\r"
        exp_continue
    }
    -re "Enter the name of the user to add to this user group.*" {
        send -- "docker_user\r"
        exp_continue
    }
    -re "Is this user name ok\\? \\(y/n\\).*" {
        send -- "y\r"
        exp_continue
    }
    -re "Add user docker_user to group flirimaging. Is this ok\\? \\(y/n\\).*" {
        send -- "y\r"
        exp_continue
    }
}
expect eof
