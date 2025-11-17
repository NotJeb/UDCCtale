function Debug_TextY(_text_place, _developer = false, _object = undefined, _variable = undefined) {
	if ((_developer && !world.settings.developer_mode) || (_object != undefined && _variable != undefined && !variable_instance_exists(_object, _variable))) {
		debug.text_y[_text_place] = 0;
		return false;
	}
	
	var _debug_text_y = 5;
	for (var i = 0; i < clamp(_text_place, 0, array_length(debug.text_y)); i++)
		if (debug.text_y[i]) _debug_text_y += 20;
	
	debug.text_y[_text_place] = _debug_text_y;
	return true;
}