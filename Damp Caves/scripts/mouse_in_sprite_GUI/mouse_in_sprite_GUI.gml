/// @function mouse_in_sprite_box(_spr, _x, _y)
/// @param _spr   The sprite index
/// @param _x     X position (GUI draw X, sprite center)
/// @param _y     Y position (GUI draw Y, sprite center)
/// @returns      true if mouse is inside sprite box (ignores transparency)

function mouse_in_sprite_GUI(_spr, _x, _y) {
    var sw = sprite_get_width(_spr);
    var sh = sprite_get_height(_spr);

    // Mouse in GUI space
    var mx = device_mouse_x_to_gui(0);
    var my = device_mouse_y_to_gui(0);

    // Check against centered box
    return (mx > _x - sw * 0.5 && mx < _x + sw * 0.5 &&
            my > _y - sh * 0.5 && my < _y + sh * 0.5);
}
