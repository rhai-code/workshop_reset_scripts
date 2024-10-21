#!/bin/bash

# Remove specified files and directories
rm -rf ~/.config/instructlab/*
rm -rf ~/.cache/instructlab/models/*
rm -rf ~/.local/share/instructlab/datasets/*
rm -rf ~/.local/share/instructlab/internal/train_configuration/profiles/*
rm -rf ~/.local/share/instructlab/taxonomy/knowledge/instructlab/

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
