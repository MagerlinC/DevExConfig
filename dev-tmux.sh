#!/bin/sh
tmux new-session -d 'work'
tmux new-window 'serve'
tmux new-window 'cmds'
tmux new-window 'nvim'
tmux new-session -d 'config'
tmux new-window '.config'
tmux new-window 'repo'
tmux attach -d -t work
