/// @description
if (!surface_exists(surf)) {
    surf = surface_create(VIEW_W, VIEW_H);
}

surface_set_target(surf);
camera_apply(VIEW);
draw_clear_alpha(0, 1);
gpu_set_blendmode(bm_subtract);
draw_circle(obj_player.x, obj_player.y, 150, false);
gpu_set_blendmode(bm_normal);
surface_reset_target();

draw_surface(surf, VIEW_X, VIEW_Y);
