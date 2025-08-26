for(var i = 0; i < obj_player.total_perks; i++){
var _options = [];
	for(var _i = 0; _i < PERKS.COUNT; _i++){
	  if(obj_player.perks[_i] < obj_player.limit[_i])
	    array_push(_options, _i);
	}
array_shuffle_ext(_options);

instance_create_depth(obj_player.x,obj_player.y,1,obj_perk, {upgrade_num:i, perk: _options[0]})
}
instance_destroy();		
