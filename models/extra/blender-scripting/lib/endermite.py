import bpy
import os

# join them together ctrl+j
bpy.ops.object.join()

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
target_file = os.path.join(directory, 'endermite.b3d')

#bpy.ops.export_scene.obj(filepath=target_file)
bpy.ops.screen.b3d_export(filepath=target_file)

#bpy.ops.export_scene.obj()
#bpy.ops.screen.b3d_export()

# exits blender
bpy.ops.wm.quit_blender()
