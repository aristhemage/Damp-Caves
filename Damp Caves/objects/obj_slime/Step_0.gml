var spd = 2; 
var dir = point_direction(x, y, obj_player.x, obj_player.y);

switch(state){
	case ENEMY_STATE.FOLLOW_PLAYER:
		if (distance_to_object(obj_player) > 60) {
		    x += lengthdir_x(spd, dir);
		    y += lengthdir_y(spd, dir);
		} else {
			state = ENEMY_STATE.PREPARE_LEAP
			leap_prep_timer = 60;
			leap_angle = point_direction(x,y,obj_player.x, obj_player.y)
		}
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

image_xscale = x > obj_player.x ? scale:-scale

if(hp <= 0){
	instance_destroy()	
}