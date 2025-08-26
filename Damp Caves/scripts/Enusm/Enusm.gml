// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Enusm(){
	enum CAMERA_STATE{
		FOLLOW_PLAYER,
		FOCUS_OBJECT,
	}
	
	enum ENEMY_STATE{
		FOLLOW_PLAYER,
		PREPARE_LEAP,
		LEAP,
	}
	
	enum ACTION {
	    MOVE,
		MOVE_TET,
	    WAIT_FOR_OBJECT,
	    WAIT_FOR_OBJECT_DESTROY,
	    WAIT_FOR_KEY,
	    WAIT_FOR_CLICK,
	    WAIT_TIME,
	    WAIT_FOR_VAR,
	    WAIT_FOR_VAR_GREATER,
	    DISPLAY_TEXT,
		CREATE_OBJECT,
		DESTROY_OBJECT,
		FADE_OBJECT,
		GOTO_ROOM,
		SET_VAR,
		SET_TET,
		TET_SPEAK,
		CUSTOM_SCRIPT,
	}
	
	enum PERKS {
		SHOOT_SPEED,
		BUBBLE_DAMAGE,
		BUBBLE_SIZE,
		BUBBLE_SPEED,
		BUBBLE_LIFESPAN,
		BUBBLE_STUN,
		BUBBLE_PIERCE,
		TOTAL_PERKS,
		COUNT,	// End of Enum
	}
}