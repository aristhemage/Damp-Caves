var _x = 200

var spacing   = sprite_get_height(spr_upgrade_bg); // height of your upgrade bg
var total_h   = obj_player.total_perks * spacing;  // total stack height
var start_y   = (1080 - total_h) / 2;       // centers vertically

var _y = start_y + (upgrade_num * spacing);

draw_sprite(spr_upgrade_icon,0,_x,_y)



txt = ""; 
switch (perk) {
    case PERKS.SHOOT_SPEED: 
        txt = "Shoot Speed Up!"; 
		draw_sprite(spr_upgrade_shoot_speed,0,_x,_y)
    break;

    case PERKS.BUBBLE_DAMAGE: 
		txt = "Bubble Damage Up!"
        draw_sprite(spr_upgrade_damage,0,_x,_y)
    break;

    case PERKS.BUBBLE_SIZE: 
		txt = "Bubble Size Up!"
        draw_sprite(spr_upgrade_size,0,_x,_y) 
    break;

    case PERKS.BUBBLE_SPEED: 
        txt = "Bubble Speed Up!"; 
		draw_sprite(spr_upgrade_bubble_speed,0,_x,_y)
    break;

    case PERKS.BUBBLE_LIFESPAN: 
        txt = "Bubble Lifespan Up!"; 
    break;

    case PERKS.BUBBLE_STUN: 
        txt = "Bubble Stun Up!"; 
    break;

    case PERKS.BUBBLE_PIERCE: 
        txt = "Bubble Pierce Up!"; 
    break;
	
    case PERKS.TOTAL_PERKS: 
        txt = "Total Perks Up!"; 
    break;
	
    case PERKS.EXP_PICKUP_RANGE: 
        txt = "EXP Pickup range Up!"; 
		draw_sprite(spr_upgrade_exp_range,0,_x,_y) 
    break;
	
    case PERKS.SPOTLIGHT_RANGE: 
        txt = "Spotlight Range Up!"; 
    break;
    case PERKS.HP_DROP:
        txt = "HP Drop Chance up!"; 
    break;

    default:
        txt = "Unknown Perk";
    break;
}

gui_x = device_mouse_x_to_gui(0)
gui_y = device_mouse_y_to_gui(0)



//draw_text_transformed(_x,_y,txt,0.25,0.25,0)
if(is_double){
	if(obj_player.perks[perk] + 2 > obj_player.limit[perk]){
		is_double = false				
	}else{
		draw_text_transformed(_x+20,_y+20,"x2!",0.25,0.25,0)	
	}
}


if (mouse_in_sprite_GUI(spr_upgrade_icon, _x, _y)) {
    if(mouse_check_button_released(mb_left)){
		obj_player.perks[perk]++;
		if(is_double){
			obj_player.perks[perk]++
		}
		unpause()
	}
	// Upgrade Description
	if(instance_exists(obj_upgrade_bg))
		obj_upgrade_bg.txt = txt;
	//draw_sprite_ext(spr_upgrade_desc,0,700,700,20,3,0,c_white,1)
}