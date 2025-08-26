var spr = spr_red_square;
var _x = 550 + upgrade_num * 256;
var _y = 450;
draw_sprite(spr,0,_x,_y)

if (mouse_in_sprite_GUI(spr, _x, _y)) {
    draw_text(200, 170, "Mouse inside sprite!");
}