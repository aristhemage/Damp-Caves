if(!global.paused){
	angle = point_direction(x,y,mouse_x,mouse_y) + 90;
	image_angle = angle;

	var h_spd = 0;
	var v_spd = 0;

	var kLeft  = keyboard_check(vk_left)  || keyboard_check(ord("A"));
	var kRight = keyboard_check(vk_right) || keyboard_check(ord("D"));
	var kUp    = keyboard_check(vk_up)    || keyboard_check(ord("W"));
	var kDown  = keyboard_check(vk_down)  || keyboard_check(ord("S"));
	var kShoot  = keyboard_check(vk_space) || mouse_check_button(mb_left);
	var kAutoFire  = keyboard_check_released(ord("Q"));
	
	if(kAutoFire){auto_fire = !auto_fire}
	if(auto_fire){kShoot = true;}

	// Movement
	if (kLeft)  h_spd = -1;
	if (kRight) h_spd =  1;
	if (kUp)    v_spd = -1;
	if (kDown)  v_spd =  1;

	x += h_spd * move_spd;
	y += v_spd * move_spd;

	// Shooting
	
	// Define the bubble
	bubble = {
		unlocked: true,
	    spd: 4 + perks[PERKS.BUBBLE_SPEED],
	    life: 60 + perks[PERKS.BUBBLE_LIFESPAN],
	    pierce: 1 + perks[PERKS.BUBBLE_PIERCE],
		damage: 1 + perks[PERKS.BUBBLE_DAMAGE],
		size: 1 + perks[PERKS.BUBBLE_SIZE],
	};
	
	// Cooldown
	if(shoot_cooldown > 0) shoot_cooldown--;

	// Actually shoot
	if (kShoot){
		if(shoot_cooldown <= 0){
			shoot_cooldown = shoot_cooldown_int-perks[PERKS.SHOOT_SPEED]*7.5
			instance_create_depth(x,y,1,obj_bubble,{angle: angle-90, bubble: variable_clone(bubble)})
		}	
	}

	// Leveling
	var experience = instance_place(x,y,obj_xp);
	xp_range = 32 + perks[PERKS.EXP_PICKUP_RANGE]*15;
	if(experience != noone){
		xp += experience.amount;
		instance_destroy(experience);
	}
	total_perks = 3 + perks[PERKS.TOTAL_PERKS];

	if(xp >= max_xp){
		level++;
		xp -= max_xp;
		max_xp = round(max_xp * 1.15);
		level_up = true;
		global.paused = true;
	
	}
	
	//Getting hit
	var enemy = instance_place(x,y,[p_bad,obj_mushroom_cloud])
	if(enemy != noone){
		if(invince_timer <= 0){
			invince_timer = 80;
			hp--;
		}
	}
	if(invince_timer > 0){
		invince_timer--;	
	}

	if(invince_timer == 0 || invince_timer % 10 == 0){
		image_alpha = 1;
	}else{
		image_alpha = 0.5
	}
	// Dying
	if(hp <= 0){
		global.paused = true;
		obj_camera.game_over = true;
	}

}

if(level_up && !level_up_setup){
	with(obj_cutscene_master){
		var cutscene = 
		[
			action_create_object(obj_upgrade_bg,obj_player.x,obj_player.y),
			action_wait_for_var_greater(obj_camera, "xp_y_offset", obj_camera.xp_y_offset_goal),
			action_create_object(obj_perk_spawner,obj_player.x,obj_player.y),
			

			

		]
	
		start_cutscene(cutscene);
	}
	level_up_setup = true;
	
	
	
}


// Debug

if(keyboard_check_released(ord("L"))){
	xp = max_xp	
}

if(hp <= 0){
	if(keyboard_check(ord("R"))){
		game_restart();	
	}
}
