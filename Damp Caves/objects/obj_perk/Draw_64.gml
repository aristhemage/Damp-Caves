var spr = spr_red_square;

var _x = ((1800 - (obj_player.total_perks * 256)) / 2) + (upgrade_num * 256);

var _y = 450;
draw_sprite(spr,0,_x,_y)


if (mouse_in_sprite_GUI(spr, _x, _y)) {
    if(mouse_check_button_released(mb_left)){
		obj_player.perks[perk]++;
		unpause()
	}
}

switch (perk) {
    case PERKS.SHOOT_SPEED: 
        txt = "Shoot Speed"; 
    break;

    case PERKS.BUBBLE_DAMAGE: 
        txt = "Bubble Damage"; 
    break;

    case PERKS.BUBBLE_SIZE: 
        txt = "Bubble Size"; 
    break;

    case PERKS.BUBBLE_SPEED: 
        txt = "Bubble Speed"; 
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

    default:
        txt = "Unknown Perk";
    break;
}

draw_text_transformed(_x,_y,txt,0.25,0.25,0)
