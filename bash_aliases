#!/bin/bash

ANDROID_HOME=/home/${USER}/android/sdk
ANDROID_PLATFORM_TOOLS=${ANDROID_HOME}/platform-tools
ANDROID_TOOLS=${ANDROID_HOME}/tools
ANDROID_NDK_HOME=/home/${USER}/android/ndk

export PATH=${PATH}:${ANDROID_PLATFORM_TOOLS}:${ANDROID_TOOLS}:${ANDROID_NDK_HOME}

if [ "${TERM%%-*}" != "linux" ]; then
    source .config/terminal/themes/base16-eighties-dark.sh
else
    source .config/terminal/themes/base16-eighties-dark_linux.sh

    ## Set the font size to something more palettable
    setfont /usr/share/consolefonts/Uni2-Terminus12x6.psf.gz
fi
