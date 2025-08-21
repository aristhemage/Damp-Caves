switch (state) {
    case CAMERA_STATE.FOLLOW_PLAYER:
        if (instance_exists(obj_player)) {
            x = obj_player.x;
            y = obj_player.y;
        } else {
            x = room_width / 2;
            y = room_height / 2;
        }
    break;

    case CAMERA_STATE.FOCUS_OBJECT:
        x = focus.x;
        y = focus.y;
    break;
}
