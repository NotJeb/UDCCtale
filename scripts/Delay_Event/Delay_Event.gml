function Delay_Event(_func, _delay, _arguments = [], _inst = id) {
	var _time_source = time_source_create(time_source_game, _delay, time_source_units_frames, _func, _arguments, 1);
	time_source_start(_time_source);
	array_push(_inst.time_sources, _time_source);
}