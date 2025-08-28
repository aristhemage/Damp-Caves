/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
switch(state){
	case ENEMY_STATE.FOLLOW_PLAYER:
		if(chase_timer <= 0){
			if (distance_to_object(obj_player) < 60){
				state = ENEMY_STATE.MUSHROOM_PREP
				sprite_index = spr_mushroom_prep;
				mushroom_timer = 60
			}
		}else{
			chase_timer--;	
		}
	break;
	
	case ENEMY_STATE.MUSHROOM_PREP:
		if (end_of_animation(spr_mushroom_prep)){
			image_speed = 0;
			if (mushroom_timer > 0){
				mushroom_timer--;
			}else{
				instance_create_depth(x,y,100,obj_mushroom_cloud);
				state = ENEMY_STATE.FOLLOW_PLAYER;
				chase_timer = 120;
				sprite_index = spr_mushroom;
				image_speed = 1;
			}
		}
	
	break;
}