#!/bin/sh

# necessary to make chrome pick up the proxy settings stored in gconf.
export DESKTOP_SESSION=gnome

# necessary for perforce
export P4CONFIG=.p4config
export P4DIFF="colordiff -u "
export P4MERGE=/google/src/files/head/depot/eng/perforce/mergep4.tcl
export P4EDITOR=$EDITOR

# Disable audible bell
xset -b

# NOTE: This may break your compose key https://groups.google.com/a/google.com/forum/#!topic/i3-users/YBexXGbik7E
export GTK_IM_MODULE=xim

# Background color
xsetroot -solid "#333333"

# Start urxvtd
urxvtd -q -f -o

[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources
exec i3
