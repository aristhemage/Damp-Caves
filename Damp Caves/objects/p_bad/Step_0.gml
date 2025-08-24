if(!global.paused){
	var dir = point_direction(x, y, obj_player.x, obj_player.y);

	if(hp <= 0){
		scr_fadeout(0.05)
		if(!xp_given){
			instance_create_depth(x,y,1,obj_xp,{amount:xp_amount})	
			xp_given = true;
		}
	}else{
		switch(state){
			case ENEMY_STATE.FOLLOW_PLAYER:
				x += lengthdir_x(spd, dir);
				y += lengthdir_y(spd, dir);
 
			break;
	
			case ENEMY_STATE.PREPARE_LEAP:
				leap_prep_timer--;
				x += -lengthdir_x(spd/2, leap_angle);
				y += -lengthdir_y(spd/2, leap_angle);
				if(leap_prep_timer <= 0){
					state = ENEMY_STATE.LEAP	
					leap_timer = 60;
				}
		
			break;
	
			case ENEMY_STATE.LEAP:
				x += lengthdir_x(spd*4, leap_angle);
				y += lengthdir_y(spd*4, leap_angle);
				leap_timer--;
				if(leap_timer <= 0){
					state = ENEMY_STATE.FOLLOW_PLAYER	
				}
			break;
		}
	}
	image_xscale = x > obj_player.x ? scale:-scale
}
