#!/bin/bash

# https://www.youtube.com/watch?v=KNa5kJd2Epo

# https://www.blender.org/download/previous-versions/
# path to your blender2.97b executable
# mine is in my home folder
# make sure you have b3d exporter installed and enabled on that version
# every blend file needs to have everything selected and shift+c (3d cursor in the middle on the floor) and inside Default tab for this to work properly
blender=$HOME/blender-2.79b-linux-glibc219-x86_64/blender

# exports agent 180 degress rotated
$blender ../../agent.blend --python $PWD/lib/agent.py
$blender ../../axolotl.blend --python $PWD/lib/axolotl.py
$blender ../../bat.blend --python $PWD/lib/bat.py
$blender ../../bee.blend --python $PWD/lib/bee.py
$blender ../../blaze.blend --python $PWD/lib/blaze.py
$blender ../../cat_baby.blend --python $PWD/lib/cat_baby.py
$blender ../../cat.blend --python $PWD/lib/cat.py
$blender ../../chicken_baby.blend --python $PWD/lib/chicken_baby.py
$blender ../../chicken.blend --python $PWD/lib/chicken.py
$blender ../../cod.blend --python $PWD/lib/cod.py
$blender ../../creeper.blend --python $PWD/lib/creeper.py
$blender ../../dolphin.blend --python $PWD/lib/dolphin.py
$blender ../../enderdragon.blend --python $PWD/lib/enderdragon.py
$blender ../../endermite.blend --python $PWD/lib/endermite.py
$blender ../../fox.blend --python $PWD/lib/fox.py
$blender ../../ghast.blend --python $PWD/lib/ghast.py
$blender ../../goat.blend --python $PWD/lib/goat.py
$blender ../../guardian+guardian_elder.blend --python $PWD/lib/guardian+guardian_elder.py
$blender ../../hoglin+zoglin.blend --python $PWD/lib/hoglin+zoglin.py
$blender ../../iron_golem.blend --python $PWD/lib/iron_golem.py
$blender ../../magmacube.blend --python $PWD/lib/magmacube.py
$blender ../../panda.blend --python $PWD/lib/panda.py
$blender ../../parrot.blend --python $PWD/lib/parrot.py
$blender ../../phantom.blend --python $PWD/lib/phantom.py
$blender ../../polarbear_baby.blend --python $PWD/lib/polarbear_baby.py
$blender ../../polarbear.blend --python $PWD/lib/polarbear.py
$blender ../../rabbit_baby.blend --python $PWD/lib/rabbit_baby.py
$blender ../../rabbit.blend --python $PWD/lib/rabbit.py
$blender ../../ravager.blend --python $PWD/lib/ravager.py
$blender ../../salmon.blend --python $PWD/lib/salmon.py
$blender ../../shulker.blend --python $PWD/lib/shulker.py
$blender ../../silverfish.blend --python $PWD/lib/silverfish.py
$blender ../../slime.blend --python $PWD/lib/slime.py
$blender ../../spider.blend --python $PWD/lib/spider.py
$blender ../../squid.blend --python $PWD/lib/squid.py
$blender ../../strider.blend --python $PWD/lib/strider.py
$blender ../../tropical.fish.a.blend --python $PWD/lib/tropical.fish.a.py
$blender ../../tropical.fish.b.blend --python $PWD/lib/tropical.fish.b.py
$blender ../../turtle.blend --python $PWD/lib/turtle.py
$blender ../../villager_zombie_baby.blend --python $PWD/lib/villager_zombie_baby.py
$blender ../../villager_zombie.blend --python $PWD/lib/villager_zombie.py
$blender ../../witch.blend --python $PWD/lib/witch.py
$blender ../../wither.blend --python $PWD/lib/wither.py
$blender ../../wolf_baby.blend --python $PWD/lib/wolf_baby.py
$blender ../../wolf.blend --python $PWD/lib/wolf.py
$blender ../../zombie_baby.blend --python $PWD/lib/zombie_baby.py
$blender ../../zombie.blend --python $PWD/lib/zombie.py

# SPECIAL CASES
# cow + mooshroom_baby
# cow + mooshroom
# drowned
# enderman
# horse + zombiehorse + skeltonhorse + mule + donkey baby
# horse + zombiehorse + skeltonhorse + mule + donkey
# llama_baby
# llama
# new_horse
# pig
# piglin
# puffer.fish
# sheep_baby
# sheep
# skeleton + skeleton_stray + wither_skeleton
# snowman
# vex
# vindicator + evoker + illusioner + villager + baby
# zombie_pigman + baby

# move all b3d files into exported folder
mv --force ../../*.b3d $PWD/exported/

echo done everything
