var _x = 200

var spacing   = sprite_get_height(spr_upgrade_bg); // height of your upgrade bg
var total_h   = obj_player.total_perks * spacing;  // total stack height
var start_y   = (1080 - total_h) / 2;       // centers vertically

var _y = start_y + (upgrade_num * spacing);

draw_sprite(spr_upgrade_icon,0,_x,_y)


if (mouse_in_sprite_GUI(spr_upgrade_icon, _x, _y)) {
    if(mouse_check_button_released(mb_left)){
		obj_player.perks[perk]++;
		if(is_double){
			obj_player.perks[perk]++
		}
		unpause()
	}
	// Upgrade Description
	//draw_sprite_ext(spr_upgrade_desc,0,700,700,20,3,0,c_white,1)
}
txt = ""; 
switch (perk) {
    case PERKS.SHOOT_SPEED: 
        txt = "Shoot Speed"; 
    break;

    case PERKS.BUBBLE_DAMAGE: 
		txt = ""
        draw_sprite(spr_upgrade_damage,0,_x,_y)
    break;

    case PERKS.BUBBLE_SIZE: 
		text = ""
        draw_sprite(spr_upgrade_size,0,_x,_y) 
    break;

    case PERKS.BUBBLE_SPEED: 
        txt = ""; 
		draw_sprite(spr_upgrade_bubble_speed,0,_x,_y)
    break;

    case PERKS.BUBBLE_LIFESPAN: 
        txt = "Bubble Lifespan"; 
    break;

    case PERKS.BUBBLE_STUN: 
        txt = "Bubble Stun"; 
    break;

    case PERKS.BUBBLE_PIERCE: 
        txt = "Bubble Pierce"; 
    break;
	
    case PERKS.TOTAL_PERKS: 
        txt = "Total Perks"; 
    break;
	
    case PERKS.EXP_PICKUP_RANGE: 
        txt = "EXP Pickup range"; 
    break;
	
    case PERKS.SPOTLIGHT_RANGE: 
        txt = "Spotlight Range"; 
    break;
    case PERKS.HP_DROP 
        txt = "HP Drop Chance"; 
    break;

    default:
        txt = "Unknown Perk";
    break;
}

draw_text_transformed(_x,_y,txt,0.25,0.25,0)
if(is_double){
	if(obj_player.perks[perk] + 2 > obj_player.limit[perk]){
		is_double = false				
	}else{
		draw_text_transformed(_x+20,_y+20,"x2!",0.25,0.25,0)	
	}
}
