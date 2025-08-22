/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
switch(state){
	case ENEMY_STATE.FOLLOW_PLAYER:
		if (distance_to_object(obj_player) < 60){
			state = ENEMY_STATE.PREPARE_LEAP
			leap_prep_timer = 60;
			leap_angle = point_direction(x,y,obj_player.x, obj_player.y)
		} 
	break;
}