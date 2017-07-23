#!/bin/sh
tmux new-session -d -s work

tmux new-window -t work:1 -n 'sys'
tmux split-window -t work:1 -h
tmux new-window -t work:2 -n 'dev'
tmux split-window -t work:2 -h
tmux new-window -t work:3 -n 'irc'

tmux select-window -t work:1
tmux -2 attach-session -t work
