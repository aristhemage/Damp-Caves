#macro VIEW view_camera[0]
#macro VIEW_X camera_get_view_x(VIEW)
#macro VIEW_Y camera_get_view_y(VIEW)
#macro VIEW_W camera_get_view_width(VIEW)
#macro VIEW_H camera_get_view_height(VIEW)
#macro VIEW_R (VIEW_X + VIEW_W)
#macro VIEW_B (VIEW_Y + VIEW_H)
#macro VIEW_CENTER_X (VIEW_X + VIEW_W/2)
#macro VIEW_CENTER_Y (VIEW_Y + VIEW_H/2)

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
