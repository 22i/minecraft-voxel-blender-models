import bpy
import os

#bpy.ops.object.select_all(action='DESELECT')

#put object as active
#bpy.context.scene.objects.active = bpy.data.objects["horse.body"]

#https://docs.blender.org/api/2.79b/bpy.ops.object.html?highlight=object#bpy.ops.object.select_pattern
#Select objects matching a naming pattern
#bpy.ops.object.select_pattern(pattern="horse_*", case_sensitive=False, extend=True)

# join them together ctrl+j
#bpy.ops.object.join()

#bpy.ops.object.select_all(action='DESELECT')

#put object as active
#bpy.context.scene.objects.active = bpy.data.objects["deco_body1"]

#https://docs.blender.org/api/2.79b/bpy.ops.object.html?highlight=object#bpy.ops.object.select_pattern
#Select objects matching a naming pattern
#bpy.ops.object.select_pattern(pattern="deco_*", case_sensitive=False, extend=True)

# join them together ctrl+j
#bpy.ops.object.join()

#bpy.ops.object.select_all(action='DESELECT')

#put object as active
#bpy.context.scene.objects.active = bpy.data.objects["llama_body"]

#https://docs.blender.org/api/2.79b/bpy.ops.object.html?highlight=object#bpy.ops.object.select_pattern
#Select objects matching a naming pattern
#bpy.ops.object.select_pattern(pattern="llama_*", case_sensitive=False, extend=True)

# join them together ctrl+j
#bpy.ops.object.join()

#put object as active
bpy.context.scene.objects.active = bpy.data.objects["horse.body"]

#bpy.ops.object.select_all(action='TOGGLE')
bpy.ops.object.select_all(action='SELECT')

# ctrl+shift+alt+c set origin to 3d cursor
bpy.ops.object.origin_set(type='ORIGIN_CURSOR')


def get_override(area_type, region_type):
    for area in bpy.context.screen.areas: 
        if area.type == area_type:             
            for region in area.regions:                 
                if region.type == region_type:                    
                    override = {'area': area, 'region': region} 
                    return override
    #error message if the area or region wasn't found
    raise RuntimeError("Wasn't able to find", region_type," in area ", area_type,
                    "\n Make sure it's open while executing script.")


#we need to override the context of our operator
override = get_override( 'VIEW_3D', 'WINDOW' )
#rotate about the X-axis by 45 degrees
bpy.ops.transform.rotate(override, axis=(0,0,1))
bpy.ops.transform.rotate(override, axis=(0,0,1))

blend_file_path = bpy.data.filepath
directory = os.path.dirname(blend_file_path)
#target_file = os.path.join(directory, 'agent.obj')
#target_file = os.path.join(directory, 'exported/agent.b3d')
target_file = os.path.join(directory, 'new_horse.b3d')
target_file_new = os.path.join(directory, 'new_horse.blend1')

#bpy.ops.export_scene.obj(filepath=target_file)
bpy.ops.screen.b3d_export(filepath=target_file)

#bpy.ops.export_scene.obj()
#bpy.ops.screen.b3d_export()

#save as for testing
bpy.ops.wm.save_as_mainfile(filepath=target_file_new)

# exits blender
bpy.ops.wm.quit_blender()
