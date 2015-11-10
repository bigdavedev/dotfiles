#!/bin/bash

ANDROID_HOME=/home/${USER}/android/sdk
ANDROID_PLATFORM_TOOLS=${ANDROID_HOME}/platform-tools
ANDROID_TOOLS=${ANDROID_HOME}/tools
ANDROID_NDK_HOME=/home/${USER}/android/ndk

export PATH=${PATH}:${ANDROID_PLATFORM_TOOLS}:${ANDROID_TOOLS}:${ANDROID_NDK_HOME}

source .config/gnome-terminal/themes/base16-ocean.dark.sh
