view_enabled = true;
view_visible[0] = true;
if instance_exists(obj_player_camera){
	 _x = clamp(obj_player_camera.x-view_width/2,0,room_width-view_width);
	 _y = clamp(obj_player_camera.y-view_height/2,0,room_height-view_height);
		camera_set_view_pos(view,_x,_y);
}