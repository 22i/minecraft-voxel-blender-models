#!/bin/bash

# depends on xdotool


# focus on blender which is full screen on left screen by moving mouse inside blender view and middle mouse clicking

# mouse needs to be there for keyboard shortcuts to work -- edit coordiantes to work with your screen setuP!

xdotool mousemove 246 119 click 2

# wait 1 secon
sleep 1

# deselect every block
xdotool key a

# wait 1 second
sleep 1

# select everything
xdotool key a

# wait 1 second
sleep 1

# put 3d cursor in the middle
xdotool key shift+c

# wait 1 second
sleep 1

# set origin
xdotool key shift+ctrl+alt+c

# wait 1 second
sleep 1

# origin to 3d cursor
xdotool key 3

# wait 1 second
sleep 1

# change to top view
xdotool key KP_7

# wait 1 second
sleep 1

# press R to start rotating
xdotool key r

# wait 1 second
sleep 1

# press 1
xdotool key 1

# wait 1 second
sleep 1

# press 8
xdotool key 8

# wait 1 second
sleep 1

# press 0
xdotool key 0

# wait 1 second
sleep 1

# press enter
xdotool key KP_Enter

# wait 1 second
sleep 1

# press enter
xdotool key ctrl+j

# wait 1 second
sleep 1

# press space
xdotool key space

# wait 1 second
sleep 1

# press b
xdotool key b

# wait 1 second
sleep 1

# press 3
xdotool key 3

# wait 1 second
sleep 1

# press enter
xdotool key KP_Enter

# wait 1 second
sleep 1

# press enter
xdotool key KP_Enter
