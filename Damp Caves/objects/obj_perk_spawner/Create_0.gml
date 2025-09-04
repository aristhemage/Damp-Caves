var chosenList = [];

// Check if an upgrade is maxxed out, if so, dont show it
// If it is also already shown, dont show it again.
for (var i = 0; i < obj_player.total_perks; i++) {
    var _options = [];
    
    // Build list of valid perks
    for (var _i = 0; _i < PERKS.COUNT; _i++) {
        if (obj_player.perks[_i] < obj_player.limit[_i]) {
            // Only add if not already showing to the player
            if (array_contains(chosenList, _i) == false) {
                array_push(_options, _i);
            }
        }
    }
    
    array_shuffle_ext(_options);
    
    // If no options left, stop loop, prevents the crash on no upgrades left 
	// TODO: Have a special screen for this and an ability to go back to the game
    if (array_length(_options) <= 0) break;
    
    chosenList[i] = _options[0];
    
    instance_create_depth(obj_player.x,obj_player.y, 1,obj_perk,{upgrade_num: i, perk: _options[0] }  );
}

instance_destroy();


