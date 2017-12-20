#!/bin/bash

tmux new-session -d -s work

tmux rename-window -t work:0 'irc'
tmux new-window -t work:1 -n 'todo'
tmux new-window -t work:2 -n 'dev'
tmux new-window -t work:3 -n 'term'

tmux select-window -t work:0
tmux -2 attach-session -t work
