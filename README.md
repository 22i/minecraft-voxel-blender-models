<img src="https://i.imgur.com/SSdmdCt.png">
###### Links
- [amc - Minetest mod just to test how the minecraft mobs look like](https://github.com/22i/amc)
- [mobs_mc - Minetest mod to test minecraft mob abilities](https://github.com/maikerumine/mobs_mc)
- [MineClone2 - Minecraft clone in Minetest](https://forum.minetest.net/viewtopic.php?t=16407)
- [how to recreate mobs from textures with Blender and Gimp](http://imgur.com/a/Iqg88)
- [mob blender pictures](https://imgur.com/a/FJXeT)
- [get minecraft universal tlauncher](https://tlauncher.org/en/) [linux](https://rutracker.org/forum/viewtopic.php?t=4891689)

##### Blender Setup
to make the model textures clearer in blender check the upper left menu bar - file - user preferences... <br /> on the system tab uncheck Mipmaps, set Anisotropic Filtering to Off and save user settings button in the lower left.

##### Checking if texture mapping is correct
- get Minecraft [tlauncher](https://tlauncher.org/en/) [linux](https://rutracker.org/forum/viewtopic.php?t=4891689) you need java installed start it up in creative and spawn the mob you want by pressing T and pasting this command /summon pig ~ ~ ~ {NoAI:1} [usefull minecraft commands](https://github.com/22i/minecraft-voxel-blender-models/edit/master/usefull%minecraft%commands)
- open the blender model you want to test
- when in default view or animation view find the outliner window in the top right
- there should be armature click on the eye icon to hide the bones
- switch to UV editing view in the upper top menu bar
- have the same view over the mob in blender and minecraft to see if anything is off

##### Exporting 180 degress rotated

- dont forget to be in object mode and press SHIFT-C
- double press A to select everything then press SHIFT-CTRL-ALT-C origin to 3D cursor
- press 7 to switch to top view rotate with R for 180 degress CTRL-J to join all the objects together
- test animation by pressing ALT-A and export using [special minetest B3D exporter](https://github.com/minetest/B3Dexport)

##### Exporting without rotation

- dont forget to be in object mode and press SHIFT-C
- double press A to select everything then press CTRL-J to join all the objects together
- test animation by pressing ALT-A and export using [special minetest B3D exporter](https://github.com/minetest/B3Dexport)

##### Exporting tips for mobs that hold items

when exporting mobs that hold items like: zombie pigman. baby zombie pigman, vex, skeleton, stray, wither skeleton, illusioner and vindicator you have a choice between minecraft default item or pixel perfection item. If you want pp then delete the other holdable item without pp in the name.

##### If exporting goes wrong

if something is off, some cube is in wrong location or if animation is broken like with wither, enderdragon, wolf and skeleton reopen that .blend skip origin to 3D cursor part and put model into middle manualy.
<img src="https://i.imgur.com/I2MDagh.png">
Credits:
- [toby109tt](https://github.com/tobyplowy) mapping fixes - better 2d planes - backface culling
