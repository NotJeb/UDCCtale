// Inherit the parent event
event_inherited();

if (time == 0) {
	Battle_Flash();
}
if (time == 19) {
	Battle_BoardTransform(320, 160, 320, 320, bb.x, bb.y, 0);
	bs.x = bb.x;
	bs.y = bb.y;
}
if (time == 20) {
	bs.x = bb.x;
	bs.y = bb.y;
}
if (Battle_Repeat(30, 150, 11)) {
	var _side = choose(-1, 1);
	var _y = random_range(50, 430);
	
	for (var i = 0; i < 5; i++) {
		var _angle = _side == -1 ? -60 + i * 30 : 180 - 60 + i * 30;
		var _spade0 = Battle_CreateProjectile(320 + 325 * _side, _y, 10, spr_battle_bullet_jevil_bomb_particle, _angle, 0, 115);
		_spade0.direction = _angle;
		_spade0.speed = 7;
		_spade0.image_index = 3;
	}
}
if (time == 165) {
	for (var i = 0; i < 5; i++) {
		var _sword0 = Battle_CreateProjectile(320, 240, 174, spr_battle_bullet_sword, 0, 0, -1, 2);
		_sword0.x_center = 320;
		_sword0.y_center = 240;
		_sword0.width = 100;
		_sword0.height = 50;
		_sword0.siner1 = (i / 5) * (pi * 2);
		_sword0.siner2 = i % 2 == 0 ? 0 : pi;
		
		if (i == 2 || i == 3) {
			_sword0.xscale = -1;
			_sword0.image_alpha = 0.5;
		}
		else {
			_sword0.xscale = 1;
			_sword0.image_alpha = 1;
		}
	}
}