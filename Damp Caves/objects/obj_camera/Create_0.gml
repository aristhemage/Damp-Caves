#macro VIEW view_camera[0] // The first (main) camera in the game
#macro VIEW_X camera_get_view_x(VIEW) // X position of the camera's top-left corner
#macro VIEW_Y camera_get_view_y(VIEW) // Y position of the camera's top-left corner
#macro VIEW_W camera_get_view_width(VIEW) // Width of the visible view
#macro VIEW_H camera_get_view_height(VIEW) // Height of the visible view
#macro VIEW_R (VIEW_X + VIEW_W) // X coordinate of the camera's right edge
#macro VIEW_B (VIEW_Y + VIEW_H) // Y coordinate of the camera's bottom edge
#macro VIEW_CENTER_X (VIEW_X + VIEW_W/2) // X coordinate of the camera's center
#macro VIEW_CENTER_Y (VIEW_Y + VIEW_H/2) // Y coordinate of the camera's center


view_width = 1920/1.2;
view_height = 1080/1.2;

window_scale = 1;
_spd = 0.09;

instance_create_depth(x,y,1,obj_player_camera);
_x = obj_player_camera.x;
_y = obj_player_camera.y;

window_set_size(view_width*window_scale,view_height*window_scale);
alarm[0] = 1;

surface_resize(application_surface,view_width*window_scale,view_height*window_scale);
//window_set_fullscreen(true);
 surf = -1
 

// XP Stuff
xp_y_offset_goal = 128
xp_y_offset = 0
xp_alpha = 0;