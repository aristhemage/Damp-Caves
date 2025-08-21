x += lengthdir_x(bubble.spd,angle)
y += lengthdir_y(bubble.spd,angle)

bubble.life--;
if(bubble.life <= 0){
	scr_fadeout(0.05)
}

var bad = instance_place(x,y,p_bad);

if(bad != noone && image_alpha >= 1){
	bad.hp -= bubble.damage	
	bubble.pierce--;
	if(bubble.pierce <= 0){
		scr_fadeout(0.05)	
	}
}