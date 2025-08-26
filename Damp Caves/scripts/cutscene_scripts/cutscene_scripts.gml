function action_move(obj, target_x, target_y, spd) {
    return {
        type: ACTION.MOVE,
        obj: obj,
        target_x: target_x,
        target_y: target_y,
        spd: spd
    };
}


function action_move_tet(target_x, target_y, spd) {
    return {
        type: ACTION.MOVE_TET,
        target_x: target_x,
        target_y: target_y,
        spd: spd
    };
}

function action_wait_for_object(obj) {
    return {
        type: ACTION.WAIT_FOR_OBJECT,
        obj: obj
    };
}

function action_wait_for_key(key) {
    return {
        type: ACTION.WAIT_FOR_KEY,
        key: key
    };
}

function action_wait_for_click(obj) {
    return {
        type: ACTION.WAIT_FOR_CLICK,
        obj: obj
    };
}

function action_wait_time(seconds) {
    return {
        type: ACTION.WAIT_TIME,
        time: seconds * room_speed
    };
}

function action_wait_for_var(object, variable, value) {
    return {
        type: ACTION.WAIT_FOR_VAR,
		object: object,
        variable: variable,
        value: value
    };
}
function action_wait_for_var_greater(object, variable, value) {
    return {
        type: ACTION.WAIT_FOR_VAR_GREATER,
		object: object,
        variable: variable,
        value: value
    };
}

function action_display_text(text, wait_for_button) {
    return {
        type: ACTION.DISPLAY_TEXT,
        text: text,
        wait_for_button: wait_for_button
    };
}

function action_create_object(obj, x, y, data = {}) {
    return {
        type: ACTION.CREATE_OBJECT,
        obj: obj,
        x: x,
        y: y,
		data: data
    };
}
function action_destroy_object(obj) {
    return {
        type: ACTION.DESTROY_OBJECT,
        obj: obj
    };
}

function action_wait_for_object_destroy(obj) {
    return {
        type: ACTION.WAIT_FOR_OBJECT_DESTROY,
        obj: obj
    };
}

function action_fade_object(obj) {
    return {
        type: ACTION.FADE_OBJECT,
        obj: obj
    };
}

function action_goto_room(rm) {
    return {
        type: ACTION.GOTO_ROOM,
        rm: rm
    };
}

function action_set_var(object,variable,val){
	return {
		type: ACTION.SET_VAR,
		object: object,
		variable: variable,
		val: val
	}
}

function action_set_tet(eyelids,light = obj_tet.light_col ,state = obj_tet.state){
	return {
		type: ACTION.SET_TET,
		eyelids: eyelids,
		light: light,
		state: state
	}
}

function action_custom_script(funct) {
    return {
        type: ACTION.CUSTOM_SCRIPT,
        fuct: funct
    };
}

function action_create_tet_bubble(txt,txtSpd = 1, isNext = true, bubbleTimer = -1){
	return{
		type: ACTION.TET_SPEAK,
		txt: txt,
		txtSpd: txtSpd,
		isNext: isNext,
		bubbleTimer: bubbleTimer
	};
}

function start_cutscene(actions) {
	if(!cutscene_active){
	    cutscene_active = true;
	    cutscene_queue = actions;
	    current_action = 0;
	    waiting = false;
	}
	

}
