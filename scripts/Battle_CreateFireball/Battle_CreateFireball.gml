function Battle_CreateFireball(_x, _y, _angle = 0, _color = 0, _time = 0, _attach_bottom = false) {
	var _inst = instance_create_depth(_x, _y + (_attach_bottom ? -11 : 0), 0, battle_bullet_fireball);
	_inst.image_angle = _angle;
	_inst.color = _color;
	_inst.image_blend = (_color == 0) ? c_white : ((_color == 1) ? make_color_rgb(20, 196, 255) : make_color_rgb(248, 148, 29));
	_inst.alarm[0] = _time;
	
	return _inst;
}