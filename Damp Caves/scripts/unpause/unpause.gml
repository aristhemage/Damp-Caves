// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function unpause(){
		global.paused = false;
		obj_player.level_up = false;
		obj_player.level_up_setup = false;
		obj_camera.xp_y_offset = 0
		obj_camera.xp_alpha = 0;
		
		with(obj_perk){
			instance_destroy();
		}
		with(obj_upgrade_bg){
			instance_destroy();
		}
		
}