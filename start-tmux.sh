#!/bin/sh
tmux new-session -d -s work

tmux rename-window -t work:0 'sys'
tmux new-window -t work:1 -n 'vim'

tmux select-window -t work:0
tmux -2 attach-session -t work
