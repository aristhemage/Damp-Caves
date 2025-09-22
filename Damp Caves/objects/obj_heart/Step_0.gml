if(place_meeting(x,y,obj_player)){
	obj_player.hp = min(obj_player.hp + 1, obj_player.max_hp);	
	instance_destroy();
}

if(life <= 0){
	scr_fadeout(0.05);	
}
life--;