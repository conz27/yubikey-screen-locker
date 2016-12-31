#!/bin/bash

# File: /usr/local/bin/yubikey_gone.sh
# Window Manager: KDE

# Double-check if the YubiKey is actually removed. Challenge-Response won't trigger the screensaver
# this way.

if [ -z "$(lsusb | grep Yubico)" ]; then
    logger "YubiKey Removed or Changed"
    # Trigger Lock Screen
    loginctl lock-sessions
fi

