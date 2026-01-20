// Inherit the parent event
event_inherited();

if (Battle_GetTurnTime() == 1) {
	time = 0;
}
if (time == 0) {
	bb.angle = 0;
		
	attack_type = irandom(1);
	if (attack_count < 7)
		battle._turn_time += attack_time[attack_type] + 1;
	
	Battle_Flash();
	
	attack_count++;
}
if (attack_type == 0) {
	if (time == 19) {
		Battle_BoardTransform(65, 65, 65, 65, bb.x, bb.y, 0);
	
		bs.x = bb.x;
		bs.y = bb.y;
	
		Battle_SetSoul(battle_soul_red);
	}
	if (time == 20) {
		bs.x = bb.x;
		bs.y = bb.y;
	}
	if (Battle_Repeat(20, 148, 64)) {
		for (var i = 0; i < 3; i++) {
			var _edge0 = Battle_CreateEdge(0, 0, i * 120, 0, 130);
			_edge0.custom = 0;
			_edge0.x_center = bb.x;
			_edge0.y_center = bb.y;
			_edge0.circ_distance = 90;
			_edge0.rotation = 2.5;
			Anim_Create(_edge0, "circ_distance", ANIM_TWEEN.SINE, ANIM_EASE.OUT, 90, -130, 65);
			Anim_Create(_edge0, "circ_distance", ANIM_TWEEN.SINE, ANIM_EASE.IN, -40, 130, 65, 65);
		}
	}
	if (Battle_Repeat(20, 212, 32)) {
		Battle_CreateSlash(bs.x, bs.y, random(360), 30);
	}
}
if (attack_type == 1) {
	if (time == 19) {
		Battle_BoardTransform(65, 65, 65, 65, bb.x, bb.y, 0);
	
		bs.x = bb.x;
		bs.y = bb.y;
	
		Battle_SetSoul(battle_soul_red);
	}
	if (time == 20) {
		bs.x = bb.x;
		bs.y = bb.y;
		
		Anim_Create(bb, "angle", 0, 0, 0, 315, 280);
	}
	if (Battle_Repeat(20, 300, 10)) {
		var _fireball0 = Battle_CreateFireball(0, 0, 0, 0, 120, true);
		_fireball0.custom = 0;
		_fireball0.circ_distance = 115;
		_fireball0.tangental_offset = random_range(-45, 45);
		_fireball0.x_center = bb.x;
		_fireball0.y_center = bb.y;
		_fireball0.speed = 0;
	}
	if (Battle_Repeat(20, 300)) {
		with (battle_bullet_fireball) {
			speed += random_range(-0.1, 0.1);
			tangental_offset += speed;
			circ_distance -= 210 / 120;
			image_angle = battle_board.angle;
		}
	}
}