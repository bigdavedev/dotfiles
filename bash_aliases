#!/bin/bash

ANDROID_HOME=/home/${USER}/sdks/android/sdk
ANDROID_PLATFORM_TOOLS=${ANDROID_HOME}/platform-tools
ANDROID_TOOLS=${ANDROID_HOME}/tools
ANDROID_NDK_HOME=/home/${USER}/android/ndk

export PATH=${PATH}:${ANDROID_PLATFORM_TOOLS}:${ANDROID_TOOLS}:${ANDROID_NDK_HOME}:${HOME}/.local/bin

if [ "${TERM%%-*}" == "linux" ]; then
    source ~/.config/terminal/themes/base16-eighties-dark_linux.sh

    ## Set the font size to something more palettable
    setfont ${HOME}/.fonts/ter-powerline-v12n.psf.gz
fi

alias xephyr='Xephyr -ac -br -noreset -screen 800x600 :1'

alias delphi-vpn-external='sudo openconnect portal.mecel.se --interface=tun0 --user=davidb --no-cert-check --no-proxy --background'
alias delphi-vpn-internal='sudo openconnect 192.168.70.1 --interface=tun0 --user=davidb --no-cert-check --no-proxy --background'
alias delphi-vpn-disconnect='sudo pkill -SIGINT openconnect'

alias setup_env_nuc='source /opt/poky-dip/2.0.1/environment-setup-corei7-64-poky-linux'
alias setup_env_ut='source /home/dabr/ihu/ihu_vehiclefunctions/scripts/setup_ut_env.sh'
