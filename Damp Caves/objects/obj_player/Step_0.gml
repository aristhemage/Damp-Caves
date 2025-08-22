angle = point_direction(x,y,mouse_x,mouse_y) + 90;
image_angle = angle;

var h_spd = 0;
var v_spd = 0;

var kLeft  = keyboard_check(vk_left)  || keyboard_check(ord("A"));
var kRight = keyboard_check(vk_right) || keyboard_check(ord("D"));
var kUp    = keyboard_check(vk_up)    || keyboard_check(ord("W"));
var kDown  = keyboard_check(vk_down)  || keyboard_check(ord("S"));
var kShoot  = keyboard_check(vk_space) || mouse_check_button(mb_left);

// Movement
if (kLeft)  h_spd = -1;
if (kRight) h_spd =  1;
if (kUp)    v_spd = -1;
if (kDown)  v_spd =  1;

x += h_spd * move_spd;
y += v_spd * move_spd;

// Shooting
if(shoot_cooldown > 0) shoot_cooldown--;

if (kShoot){
	if(shoot_cooldown <= 0){
		shoot_cooldown = shoot_cooldown_int
		instance_create_depth(x,y,1,obj_bubble,{angle: angle-90, bubble: variable_clone(bubble)})
	}	
}

// Leveling
var xp = instance_place(x,y,obj_xp);

if(xp != noone){
	experience += xp.amount;
	instance_destroy(xp);
}

