if(!global.paused){
	if(distance_to_object(obj_player) < obj_player.xp_range){
		var dir = point_direction(x,y,obj_player.x,obj_player.y)
		x += lengthdir_x(5,dir)	
		y += lengthdir_y(5,dir)	
	}
}
