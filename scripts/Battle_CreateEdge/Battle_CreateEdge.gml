function Battle_CreateEdge(_x, _y, _angle, _color = 0, _time = -1, _flip = 0, _board = battle_board){
	var _inst = instance_create_depth(_x, _y, DEPTH_BATTLE.BULLET, battle_bullet_edge);
	_inst.color = _color;
	_inst.image_blend = (_color == 0) ? c_white : ((_color == 1) ? make_color_rgb(20, 196, 255) : make_color_rgb(248, 148, 29));
	_inst.image_angle = _angle;
	_inst.image_xscale = _flip ? -1 : 1;
	_inst.alarm[0] = _time;
	
	return _inst;
}