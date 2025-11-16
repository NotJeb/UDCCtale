var _time = 11 + ((time - 2395) / 600) * 50;

if (time + _time < 2985) {
	var _dir = [DIR.UP, DIR.DOWN, DIR.LEFT, DIR.RIGHT];
	_dir = array_filter(_dir, function(element){return element != battle_soul.dir});
	_dir = _dir[irandom(array_length(_dir) - 1)];

	Battle_Slam(_dir);
	bs.impact = 2;

	alarm[0] = _time;
}