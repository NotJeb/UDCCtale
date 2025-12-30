if(!surface_exists(_surface)){
	_surface=surface_create(640,480);
}

surface_set_target(_surface);{
	draw_clear_alpha(0,0);
}surface_reset_target();

if(!surface_exists(mask_surface)){
	mask_surface=surface_create(640,480);
}

if (array_length(push_array) > 0) {
	var _min_push = push_array[0];
	for (var i = 1; i < array_length(push_array); i++)
		_min_push = push_array[i][0] < _min_push[0] ? push_array[i] : _min_push;
		
	show_debug_message($"array: {push_array}, min: {_min_push}");
	
	push_array = [];

	battle_soul.x = _min_push[1];
	battle_soul.y = _min_push[2];
}