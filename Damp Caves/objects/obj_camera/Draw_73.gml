/// @description camera
if (!surface_exists(surf)) {
    surf = surface_create(VIEW_W, VIEW_H);
}

surface_set_target(surf);
camera_apply(VIEW);
draw_clear_alpha(0, 1);
gpu_set_blendmode(bm_subtract);
// Spotlight
draw_circle(obj_player.x, obj_player.y, 150 + obj_player.perks[PERKS.SPOTLIGHT_RANGE]*30, false);
gpu_set_blendmode(bm_normal);
surface_reset_target();

draw_surface(surf, VIEW_X, VIEW_Y);


// XP Bar
var buffer = 16;
var xscale = (VIEW_W+32)/sprite_get_width(spr_xp_bar)/1.1;

draw_sprite_ext(spr_xp_bar,0,VIEW_X+buffer,VIEW_Y+buffer,xscale,1,0,c_white,1);
draw_sprite_ext(spr_xp_bar,0,VIEW_X+buffer,VIEW_Y+buffer,xscale * (obj_player.xp / obj_player.max_xp),1,0,make_color_rgb(255,105,180),1);

// Hearts
for(var i = 1; i <= obj_player.max_hp; i++){
	if(obj_player.hp >= i){
		draw_sprite(spr_heart,0,VIEW_X + 64 * i -32, VIEW_B - 40)
	}else{
		draw_sprite_ext(spr_heart,0,VIEW_X + 64 * i -32, VIEW_B - 40,1,1,0,c_white,0.5)
	}	
}
// Leveling up
if(obj_player.level_up){
	//Draw a rectangle to add depth
	draw_set_colour(c_black);
	draw_set_alpha(0.75);
	draw_rectangle(0,0,room_width,room_height,false);
	draw_set_alpha(1);
	// Set the allignment
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_font(fnt_game);
	draw_set_colour(c_white);
	// Draw text
	draw_set_alpha(xp_alpha);
	draw_text_transformed(VIEW_CENTER_X, VIEW_Y + xp_y_offset, "Choose your perk", 0.5, 0.5, 0);

	// Reset
	draw_set_alpha(1);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
}

show_debug_message("X: " + string(device_mouse_x_to_gui(0)) + " Y: " + string(device_mouse_y_to_gui(0)))