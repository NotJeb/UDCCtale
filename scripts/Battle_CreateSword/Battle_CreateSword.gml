function Battle_CreateSword(_x, _y, _size, _color = 0, _angle = 0) {
	var _inst = instance_create_depth(_x, _y, 0, battle_bullet_sword);
	_inst.image_angle = _angle;
	var _scale = _size / max(sprite_get_width(_inst.sprite_index), sprite_get_height(_inst.sprite_index));
	_inst.image_xscale = _scale;
	_inst.image_yscale = _scale;
	_inst.color = _color;
	_inst.size = _size;
	
	return _inst;
}