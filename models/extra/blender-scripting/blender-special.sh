#!/bin/bash

# https://www.youtube.com/watch?v=KNa5kJd2Epo

# https://www.blender.org/download/previous-versions/
# path to your blender2.97b executable
# mine is in my home folder
# make sure you have b3d exporter installed and enabled on that version
# every blend file needs to have shift+c (3d cursor in the middle on the floor) and inside Default tab for this to work properly
blender=$HOME/blender-2.79b-linux-glibc219-x86_64/blender


$blender ../../cow+mooshroom.blend --python $PWD/+/cow.py
$blender ../../cow+mooshroom.blend --python $PWD/+/mooshroom.py
$blender ../../cow+mooshroom_baby.blend --python $PWD/+/cow_baby.py
$blender ../../cow+mooshroom_baby.blend --python $PWD/+/mooshroom_baby.py
$blender ../../drowned.blend --python $PWD/+/drowned.py
$blender ../../enderman.blend --python $PWD/+/enderman.py
$blender ../../horse+zombiehorse+skeltonhorse+mule+donkey.blend --python $PWD/+/horse.py
$blender ../../horse+zombiehorse+skeltonhorse+mule+donkey_baby.blend --python $PWD/+/horse_baby.py
$blender ../../llama_baby.blend --python $PWD/+/llama_baby.py
$blender ../../llama.blend --python $PWD/+/llama.py
$blender ../../new_horse.blend --python $PWD/+/new_horse.py
$blender ../../pig.blend --python $PWD/+/pig.py
$blender ../../piglin.blend --python $PWD/+/piglin_mc.py
$blender ../../piglin.blend --python $PWD/+/piglin_pp.py
$blender ../../puffer.fish.blend --python $PWD/+/puffer.fish.py
$blender ../../sheep_baby.blend --python $PWD/+/sheep_baby.py
$blender ../../sheep.blend --python $PWD/+/sheep.py
$blender ../../skeleton+skeleton_stray+wither_skeleton.blend --python $PWD/+/skeleton_mc.py
$blender ../../skeleton+skeleton_stray+wither_skeleton.blend --python $PWD/+/skeleton_pp.py
$blender ../../skeleton+skeleton_stray+wither_skeleton.blend --python $PWD/+/wither_skeleton_pp.py
$blender ../../skeleton+skeleton_stray+wither_skeleton.blend --python $PWD/+/wither_skeleton_mc.py
$blender ../../skeleton+skeleton_stray+wither_skeleton.blend --python $PWD/+/skeleton_stray_mc.py
$blender ../../skeleton+skeleton_stray+wither_skeleton.blend --python $PWD/+/skeleton_stray_pp.py
$blender ../../snowman.blend --python $PWD/+/snowman.py
$blender ../../vex.blend --python $PWD/+/vex_pp.py
$blender ../../vex.blend --python $PWD/+/vex_mc.py
$blender ../../vindicator+evoker+illusioner+villager+baby.blend --python $PWD/+/villager.py
$blender ../../vindicator+evoker+illusioner+villager+baby.blend --python $PWD/+/vindicator_mc.py
$blender ../../vindicator+evoker+illusioner+villager+baby.blend --python $PWD/+/vindicator_pp.py
$blender ../../vindicator+evoker+illusioner+villager+baby.blend --python $PWD/+/illusioner_pp.py
$blender ../../vindicator+evoker+illusioner+villager+baby.blend --python $PWD/+/illusioner_mc.py
$blender ../../zombie_pigman+baby.blend --python $PWD/+/zombie_pigman_mc.py
$blender ../../zombie_pigman+baby.blend --python $PWD/+/zombie_pigman_pp.py

# new_horse NEEDS FIX

# move all b3d files into exported folder
mv --force ../../*.b3d $PWD/special.exported/

echo done everything
