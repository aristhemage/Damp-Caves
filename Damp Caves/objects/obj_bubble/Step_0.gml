if(!global.paused){
	image_xscale = bubble.size;
	image_yscale = bubble.size;
	x += lengthdir_x(bubble.spd,angle)
	y += lengthdir_y(bubble.spd,angle)

	bubble.life--;
	if(bubble.life <= 0){
		scr_fadeout(0.05)
	}

	var bad = instance_place(x,y,p_bad);

if (bad != noone && image_alpha >= 1) {
    if (!ds_list_find_index(hit_list, bad.id) != -1) {
        bad.hp -= bubble.damage;
        bubble.pierce--;
        ds_list_add(hit_list, bad.id);
    }
}
		if(bubble.pierce <= 0){
			scr_fadeout(0.05)	
		}
}
	