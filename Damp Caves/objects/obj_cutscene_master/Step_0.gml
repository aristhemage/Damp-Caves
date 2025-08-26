if (cutscene_active) {
    if (!waiting) {
        var action = cutscene_queue[current_action];
        switch (action.type) {
			
			//Move an object, continue cutscene when object reaches destination
			case ACTION.MOVE:

			    var obj = action.obj;
			    var tx = action.target_x;
			    var ty = action.target_y;
			    var spd = action.spd;

			    // Make sure obj is valid
			    if (!instance_exists(obj)) {
			        show_debug_message("MOVE ERROR: Target object doesn't exist.");
			        current_action += 1;
			        break;
			    }

			    // Get direction and distance
			    var dx = tx - obj.x;
			    var dy = ty - obj.y;
			    var dist = point_distance(obj.x, obj.y, tx, ty);

			    if (dist > spd) {
			        // Move toward target
			        obj.x += spd * (dx / dist);
			        obj.y += spd * (dy / dist);
			    } else {
			        // Snap to position and move to next action
			        obj.x = tx;
			        obj.y = ty;
			        current_action += 1;
			    }
			break;


			//Wait for object to exist
            case ACTION.WAIT_FOR_OBJECT:
                if (instance_exists(action.obj)) {
                    current_action += 1;
                }
                break;

			//Wait for key to be pressed
            case ACTION.WAIT_FOR_KEY:
                if (keyboard_check_pressed(action.key)) {
                    current_action += 1;
                }
                break;
			
			//Wait for object to be clicked
            case ACTION.WAIT_FOR_CLICK:
                if (mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, action.obj)) {
                    current_action += 1;
                }
                break;

			//Wait a certain amount of time, measured in seconds, see else
            case ACTION.WAIT_TIME:
                waiting = true;
                wait_timer = action.time;
                break;
			
			//Wait for variable to be a certain value
            case ACTION.WAIT_FOR_VAR:
                if (variable_instance_get(action.object, action.variable) == action.value) {
                    current_action += 1;
                }
                break;

            case ACTION.WAIT_FOR_VAR_GREATER:
                if (variable_instance_get(action.object, action.variable) >= action.value) {
                    current_action += 1;
                }
                break;			
			//Create an object on the Instances layer
		    case ACTION.CREATE_OBJECT:
		        instance_create_depth(action.x, action.y, 1, action.obj,action.data);
		        current_action += 1;
		        break;	
		    
			//Destroy an object
			case ACTION.DESTROY_OBJECT:
		        if (instance_exists(action.obj)) {
		            instance_destroy(action.obj);
		        }
		        current_action += 1; 
		        break;
				
			//Fade out an object, MUST HAVE THE FADE VARIABLE
			case ACTION.FADE_OBJECT:
		        if (instance_exists(action.obj)) {
		            action.obj.fade = true; 
		        }
		        current_action += 1; 
		        break;
				
				
			//Wait for an object to be distroyed
		    case ACTION.WAIT_FOR_OBJECT_DESTROY:
		        if (!instance_exists(action.obj)) {
		            current_action += 1; 
		        }
		        break;
			
			
			//Set a variable value
		    case ACTION.SET_VAR:
			
		        variable_instance_set(action.object, action.variable, action.val);
		        current_action += 1; 
		        
		        break;
				
				
			//Go to another room, SHOULD BE LAST IN CUTSCENE, 
			//SET UP NEW CUTSCENE IN OTHER ROOM
		    case ACTION.GOTO_ROOM:
					room_goto(action.rm)
				break;
			
			
			//Broken do not use.
		    case ACTION.CUSTOM_SCRIPT:
					action.funct();
		            current_action += 1; 
		        
		        break;
				

        }
    } else {
        // Handle waiting
        if (wait_timer > 0) {
            wait_timer -= 1;
            if (wait_timer <= 0) {
                waiting = false;
                current_action += 1;
            }
        }
    }

    // End cutscene
    if (current_action >= array_length(cutscene_queue)) {
        cutscene_active = false;
		cutscene = -1;
    } 
}



