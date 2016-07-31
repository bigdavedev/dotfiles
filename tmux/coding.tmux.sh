#!/usr/bin/env bash

declare -r SESSION=$1

tmux has-session -t ${SESSION}

if [ $? != 0 ]; then
    tmux -2 new-session -d -s ${SESSION}
    tmux new-window -t ${SESSION}:0 -n 'vim'
    tmux new-window -t ${SESSION}:1 -n 'build'
    tmux new-window -t ${SESSION}:2 -n 'git'

    tmux send-keys -t ${SESSION}:0 "cd ~/git/github.com/bigdavedev/${SESSION}; vim" enter C-l
    tmux send-keys -t ${SESSION}:1 "cd ~/git/github.com/bigdavedev/${SESSION}/build " enter C-l
    tmux send-keys -t ${SESSION}:2 "cd ~/git/github.com/bigdavedev/${SESSION}; tig" enter C-l

    tmux select-window -t ${SESSION}:0
fi
tmux -2 attach -t ${SESSION}
