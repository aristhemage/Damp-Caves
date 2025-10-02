#macro view view_camera[0]
camera_set_view_size(view,view_width,view_height);

if instance_exists(obj_player_camera) && instance_exists(obj_player){
	 _x = clamp(obj_player_camera.x-view_width/2,0,room_width-view_width);
	 _y = clamp(obj_player_camera.y-view_height/2,0,room_height-view_height);
	 _cur_x = camera_get_view_x(view);
	 _cur_y = camera_get_view_y(view);
		camera_set_view_pos(view,lerp(_cur_x,_x,_spd),lerp(_cur_y,_y,_spd));
}else{
	camera_set_view_pos(view_camera[0], room_width * 0.5 - view_width * 0.5, room_height * 0.5 - view_height * 0.5);
}

// Leveled up (Also use var for game over)

if(obj_player.level_up || game_over){
	if(xp_y_offset < xp_y_offset_goal){
		xp_y_offset+= 4;	
	}
	if(xp_alpha < 1){
		xp_alpha +=0.01	
	}
}

// The controlls alpha
if(!show_controlls){
	if(control_text_alpha <= 1){
		control_text_alpha += 0.01;	
	}else{
		controll_text_timer--;
		if(controll_text_timer <= 0){
			show_controlls = true;	
		}
	}
}else{
	if(control_text_alpha > 0){
		control_text_alpha += -0.05;	
	}
}