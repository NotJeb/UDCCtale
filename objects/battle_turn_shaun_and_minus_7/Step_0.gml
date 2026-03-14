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
	for (var j = 0; j < 3; j += 1) {
	    for (var i = 0; i < 3; i += 1) {
			var _sword0 = Battle_CreateProjectile(bb.x + 150, (bb.y - 160) + (i * 80), 174, spr_battle_bullet_sword, 0, 0, 735, 2);
			_sword0.x_center = 320;
			_sword0.y_center = 240;
			_sword0.siner1 = j * 42;
			_sword0.siner2 = 0;
			_sword0.tag = 0;
			Anim_Create(_sword0, "image_alpha", 0, 0, 0, 1, 60);
			Anim_Create(_sword0, "image_alpha", 0, 0, 1, -1, 60, 675);
		
			var _sword1 = Battle_CreateProjectile(bb.x + 150, (bb.y - 160) + (i * 80), 174, spr_battle_bullet_sword, 0, 0, 735, 2);
			_sword1.x_center = 320;
			_sword1.y_center = 240;
			_sword1.siner1 = j * 42 + 21;
			_sword1.siner2 = 0;
			_sword1.tag = 1;
			Anim_Create(_sword1, "image_alpha", 0, 0, 0, 1, 60);
			Anim_Create(_sword1, "image_alpha", 0, 0, 1, -1, 60, 675);
		}
	}
}
if (Battle_Repeat(200, 800, 100)) {
	var _side = bs.x < bb.x ? 1 : -1;
	var _scythe0 = Battle_CreateProjectile(bs.x + _side * 250, bs.y, 150, spr_battle_bullet_jevil_scythe, 0, 0, 0, 120);
	_scythe0.tag = 3;
	_scythe0.damage = 99;
	_scythe0.direction = (_side == -1) ? DIR.RIGHT : DIR.LEFT;
	_scythe0.image_blend = c_red;
	Anim_Create(_scythe0, "image_angle", 0, 0, (_side == -1) ? 0 : 180, -90, 30);
	Anim_Create(_scythe0, "image_alpha", 0, 0, 0, 1, 30);
	Anim_Create(_scythe0, "speed", 0, 0, 0, 5, 3, 30);
	Anim_Create(_scythe0, "image_alpha", 0, 0, 1, -1, 20, 100);
}
if (Battle_Repeat(220, 820, 100)) {
	var _dir = random(90);
	for (var i = 0; i < 360; i += 90) {
		var _scythe0 = Battle_CreateProjectile(-100, -100, 50, spr_battle_bullet_jevil_scythe, i, 5, 100);
		_scythe0.tag = 2;
		_scythe0.x_center = bs.x;
		_scythe0.y_center = bs.y;
		_scythe0.circ_distance = -150;
		_scythe0.direction = i + _dir;
		Anim_Create(_scythe0, "image_alpha", 0, 0, 0, 1, 20);
		Anim_Create(_scythe0, "circ_distance", 0, 0, -150, 300, 100);
		Anim_Create(_scythe0, "image_alpha", 0, 0, 1, -1, 20, 80);
	}
}
if (Battle_Repeat(220, 920)) {
	with (battle_bullet_projectile) {
		if (tag == 2) {
			x = x_center + lengthdir_x(circ_distance, direction);
			y = y_center + lengthdir_y(circ_distance, direction);
			direction += 2;
		}
		if (tag == 2 || tag == 3) {
			can_damage = image_alpha == 1;
		}
	}
}
if (Battle_Repeat(840, 888, 12)) {
	Battle_CreateJevilBomb(bb.x - 280, random_range(20, 460), irandom(3));
	Battle_CreateJevilBomb(bb.x + 280, random_range(20, 460), irandom(3));
}
if (time == 920) {
	for (var i = 0; i < 5; i++) {
		var _cat0 = Battle_CreateProjectile(320 + cos(i * pi / 2.5) * 450, 240 + sin(i * pi / 2.5) * 450, 70, spr_battle_bullet_angry_cat, 0, 0, 600, 1);
		_cat0.move_speed = 1.6;
		_cat0.x_center = 320 + cos(i * pi / 2.5) * 450;
		_cat0.y_center = 240 + sin(i * pi / 2.5) * 450;
		_cat0.image_index = 1;
		_cat0.yscale = 0.8;
		_cat0.red_tint = 50;
	}
	
	audio_play_sound(snd_meow, 0, 0);
}
if (Battle_Repeat(940, 1520, 40)) {
	Battle_CreateJevilBomb(random_range(20, 620), random_range(20, 460), 1);
}
if (time == 1520) {
	Battle_Flash();
	instance_destroy(battle_bullet);
	
	Battle_BoardTransform(65, 65, 65, 65, 320, 320, 0);
}
if (Battle_Repeat(1560, 1800, 60)) {
	Battle_CreateJevilBomb(choose(random_range(20, 230), random_range(410, 620)), random_range(20, 460), irandom(3));
}
if (time == 2037) {
	dialog_count++;
	
	with (battle_enemy_shaun_and_minus) {
		var _inst = instance_create_depth(x + 100, y - 150, 0, battle_dialog_enemy);
		_inst.text = "are you good bro{pause}{end}";
		_inst.template = 0;
	}
}
if (dialog_count == 1 && !instance_exists(battle_dialog_enemy)) {
	dialog_count++;
	
	with (battle_enemy_minus_dummy) {
		var _inst = instance_create_depth(x - 70, y - 80, 0, battle_dialog_enemy);
		_inst.text = "nah gang im tired asf you&gotta do the rest of the&work for a bit{pause}{end}";
		_inst.template = 1;
	}
}
if (dialog_count == 2 && !instance_exists(battle_dialog_enemy)) {
	dialog_count++;
	
	with (battle_enemy_shaun_and_minus) {
		var _inst = instance_create_depth(x + 100, y - 150, 0, battle_dialog_enemy);
		_inst.text = "alright bruh{pause}{end}";
		_inst.template = 0;
	}
}