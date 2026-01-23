// Inherit the parent event
event_inherited();

if (time == 0) {
	Battle_BoardTransform(185, 65, 130, 130);
}
if (time == 10) {
	inst_cat = instance_create_depth(bb.x, -75, 0, battle_bullet_projectile);
	inst_cat.sprite_index = spr_battle_bullet_canny_cat;
	inst_cat.size = 150;
	Anim_Create(inst_cat, "y", 0, 0, -75, bb.y - 65 + 75, 30);
	Anim_Create(inst_cat, "size", ANIM_TWEEN.SINE, ANIM_EASE.OUT, 120, 30, 30);
	Anim_Create(inst_cat, "size", ANIM_TWEEN.SINE, ANIM_EASE.IN, 150, -30, 594, 30);
	Anim_Create(inst_cat, "size", ANIM_TWEEN.SINE, ANIM_EASE.IN, 120, 30, 60, 644);
}
if (time == 40) {
	audio_play_sound(snd_hypergoner_charge, 0, 0);
}
if (Battle_Repeat(120, 480, 60)) {
	var _x = (time % 120 == 0) ? bb.x - 235 : bb.x + 235
	var _bomb0 = Battle_CreateJevilBomb(_x, bb.y, 1);
}
if (Battle_Repeat(40, 590, 22)) {
	inst_cat.image_index++;
}
if (Battle_Repeat(40, 430, 6)) {
	var _size = 40;
	var _side = choose(DIR.UP, DIR.DOWN, DIR.LEFT, DIR.RIGHT);
	var _x;
	var _y;
	
	if (_side == DIR.UP || _side == DIR.DOWN) {
		_x = random(640);
		_y = _side == DIR.UP ? -_size / 2 : 480 + _size / 2;
	}
	else {
		_x = _side == DIR.LEFT ? -_size / 2 : 640 + _size / 2;
		_y = random(480);
	}
	
	var _star0 = Battle_CreateStar(_x, _y, _size);
	_star0.depth = DEPTH_BATTLE.BULLET_OUTSIDE_HIGH;
}
if (Battle_Repeat(40, 660)) {
	with (battle_bullet_star) {
		var _angle = point_direction(x, y, 300, 290);
		var _length = clamp(1 / (distance_to_point(300, 290) / 400), 0, 10);
		
		x += lengthdir_x(_length, _angle);
		y += lengthdir_y(_length, _angle);
		
		if (distance_to_point(300, 290) < 50) {
			image_xscale -= (40 / 23) / distance_to_point(300, 290);
			image_yscale -= (40 / 23) / distance_to_point(300, 290);
			
			if (image_xscale <= 0) instance_destroy();
		}
	}
}
if (time == 660) {
	var _dir = point_direction(320, 240, bs.x, bs.y);
	
	var _event0 = function(_dir) {
		var gb_beam = instance_create_depth(320, 240, DEPTH_BATTLE.BULLET_OUTSIDE_LOW, battle_bullet_slash_1);
		gb_beam.image_angle = _dir + 90;
		gb_beam.size = 70;
		gb_beam.alarm[0] = 12;
		gb_beam.alarm[1] = 12 + floor(60 / 2);
		gb_beam.alarm[2] = 72;
		gb_beam.alarm[3] = 84;
	
		audio_play_sound(snd_hypergoner_release, 0, 0);
	}
	Delay_Event(_event0, 10, [_dir]);
}
if (time == 670) {
	for (var i = 0; i < 12; i++) {
		var _dir = (360 / 12) * i;
		var _star0 = Battle_CreateStar(320, 240, 40, _dir);
		_star0.depth = DEPTH_BATTLE.BULLET_OUTSIDE_LOW;
		_star0.speed = 5;
		_star0.direction = _dir;
	}
}
if (time == 690) {
	for (var i = 0; i < 16; i++) {
		var _dir = (360 / 16) * i;
		var _star0 = Battle_CreateStar(320, 240, 40, _dir);
		_star0.depth = DEPTH_BATTLE.BULLET_OUTSIDE_LOW;
		_star0.speed = 5;
		_star0.direction = _dir;
	}
}
if (time == 710) {
	for (var i = 0; i < 12; i++) {
		var _dir = (360 / 12) * (i + 0.5);
		var _star0 = Battle_CreateStar(320, 240, 40, _dir);
		_star0.depth = DEPTH_BATTLE.BULLET_OUTSIDE_LOW;
		_star0.speed = 5;
		_star0.direction = _dir;
	}
}
if (time == 710) {
	instance_create_depth(320, 240, DEPTH_BATTLE.BULLET_OUTSIDE_HIGH, battle_explosion);
}
if (time == 714) {
	instance_create_depth(340, 270, DEPTH_BATTLE.BULLET_OUTSIDE_HIGH, battle_explosion);
}
if (time == 720) {
	instance_create_depth(310, 245, DEPTH_BATTLE.BULLET_OUTSIDE_HIGH, battle_explosion);
}
if (time == 725) {
	instance_create_depth(360, 218, DEPTH_BATTLE.BULLET_OUTSIDE_HIGH, battle_explosion);
}
if (time == 727) {
	instance_create_depth(300, 250, DEPTH_BATTLE.BULLET_OUTSIDE_HIGH, battle_explosion);
	instance_create_depth(270, 275, DEPTH_BATTLE.BULLET_OUTSIDE_HIGH, battle_explosion);
}
if (time == 735) {
	instance_create_depth(290, 260, DEPTH_BATTLE.BULLET_OUTSIDE_HIGH, battle_explosion);
	
	instance_destroy(inst_cat);
}