#!/bin/bash
source /etx/X11/Xsession

xrdb -merge ~/.Xresources

xautolock -time 5 -locker ~/bin/lock &

exec i3
