function Create_Notification(_text = "NOTIFICATION TEXT NOT SET", _sprite = spr_menu_empty, _image_index = 0){
	var _inst = instance_create_depth(0, 0, 0, notification);
	_inst.text = _text;
	_inst.sprite_index = _sprite;
	_inst.image_index = _image_index;
	
	array_insert(global.notifications, 0, _inst);
	
	return _inst;
}