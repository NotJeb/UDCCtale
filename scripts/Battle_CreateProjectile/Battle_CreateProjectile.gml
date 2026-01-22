function Battle_CreateProjectile(_x, _y, _size, _sprite_index, _angle = 0, _rotation = 0, _time = 0, _custom = -1) {
	var _inst = instance_create_depth(_x, _y, 0, battle_bullet_projectile);
	_inst.image_angle = _angle;
	_inst.alarm[0] = _time;
	_inst.sprite_index = _sprite_index;
	var _scale = _size / max(sprite_get_width(_sprite_index), sprite_get_height(_sprite_index));
	_inst.image_xscale = _scale;
	_inst.image_yscale = _scale;
	_inst.size = _size;
	_inst.rotation = _rotation;
	_inst.custom = _custom;
	
	return _inst;
}