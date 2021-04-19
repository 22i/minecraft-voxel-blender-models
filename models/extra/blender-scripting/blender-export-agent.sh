#!/bin/bash

# https://www.blender.org/download/previous-versions/
# path to your blender2.97b executable
# mine is in my home folder
# make sure you have b3d exporter installed and enabled on that version
blender=$HOME/blender-2.79b-linux-glibc219-x86_64/blender

# exports agent 180 degress rotated
$blender ../../agent.blend --python $PWD/lib/agent.py

# move b3d into exported folder
# move all b3d files into exported folder
mv ../../*.b3d $PWD/exported/


echo done everything
