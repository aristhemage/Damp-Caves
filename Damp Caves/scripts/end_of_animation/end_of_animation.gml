// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function end_of_animation(sprite){
	if(image_index > sprite_get_number(sprite) - 1){
		return true;	
	}else{
		return false;	
	}
}