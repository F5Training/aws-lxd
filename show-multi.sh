#!/bin/sh
# byobu_launcher.sh ver 20170915122301 Copyright 2017 alexx, MIT Licence ver 1.0

byobu new-session -d -s $USER

# lxc list window
byobu rename-window -t $USER:0 'lxc list'
byobu send-keys "watch -n2 -d 'lxc list'" C-m
byobu split-window -v

# lxc image list window
byobu new-window -t $USER:1 -n 'lxc image'
byobu send-keys "watch -n2 -d 'lxc image list'" C-m
byobu split-window -v

# nethogs
byobu new-window -t $USER:2 -n 'nethogs'
byobu send-keys "sudo nethogs" C-m

# Set default window as the dev split plane
byobu select-window -t $USER:0

# Attach to the session you just created
# (flip between windows with alt -left and right)
byobu attach-session -t $USER
