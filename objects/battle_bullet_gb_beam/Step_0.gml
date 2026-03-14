if (place_meeting(x,y,battle_soul) && size > 1 && image_alpha > 0.8){
	event_user(0);
}

var _change = 0;
var _time = 0;
if (time < 8) {
	_change = 0.85;
	_time = 8;
}
else if (time < (8 + shoot_time)) {
	if (size == target_size) size_dir = -1;
	if (size == target_size * 0.85) size_dir = 1;
	
	if (size_dir == -1)
		_change = -0.15;
	else
		_change = 0.15;
		
	_time = 10;
}
else if (time < (16 + shoot_time)) {
	_change = -0.85;
	_time = 8;
	image_alpha += (_change / _time);
}
else instance_destroy();

size += (_change / _time) * target_size;

time++;

image_yscale = size / sprite_get_height(sprite_index);