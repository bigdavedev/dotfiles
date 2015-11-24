#!/bin/bash

xrdb -merge ~/.Xresources

xautolock -time 5 -locker ~/bin/lock &

exec i3
