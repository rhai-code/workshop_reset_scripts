#!/bin/bash

# Remove specified files and directories
rm ~/.config/instructlab/config.yaml || true
rm -rf ~/.cache/instructlab/models/* || true
rm -rf ~/.local/share/instructlab/datasets/* || true
rm -rf ~/.local/share/instructlab/internal/train_configuration/profiles/* || true
rm -rf ~/.local/share/instructlab/taxonomy/knowledge/instructlab/ || true

# Enable pane synchronization in tmux
tmux setw synchronize-panes on

# Change directory and clear in bottom session
tmux send-keys -t bottom:0 'deactivate' C-m
tmux send-keys -t bottom:0 'cd ~' C-m
tmux send-keys -t bottom:0 'clear' C-m

# Change directory and clear in top session
tmux send-keys -t top:0 'deactivate' C-m
tmux send-keys -t top:0 'cd ~' C-m
tmux send-keys -t top:0 'clear' C-m
