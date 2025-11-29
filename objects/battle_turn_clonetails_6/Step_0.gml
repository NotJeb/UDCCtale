// Inherit the parent event
event_inherited();

if (Battle_GetTurnTime() == 1) {
	time = 0;
}
if (time == 0) {
	attack_type = irandom(5);
	if (attack_count < 7)
		battle._turn_time += attack_time[attack_type] + 1;
	
	Battle_Flash(10);
	
	attack_count++;
}
if (attack_type == 0 || attack_type == 1) {
	if (time == 9) {
		Battle_BoardTransform(65, 65, 65, 65, bb.x, bb.y, 0);
	
		Battle_SetSoul(battle_soul_blue);
		bs.dir = DIR.DOWN;
	
		bs.x = bb.x;
		bs.y = bb.y;
		
		var _dir = choose(DIR.UP, DIR.DOWN, DIR.LEFT, DIR.RIGHT);
		bs.dir = _dir;
		
		switch (_dir) {
			case (DIR.UP):
				bs.y = bb.y - 57;
				break;
			case (DIR.DOWN):
				bs.y = bb.y + 57;
				break;
			case (DIR.LEFT):
				bs.x = bb.x - 57;
				break;
			case (DIR.RIGHT):
				bs.x = bb.x + 57;
				break;
		}
		
		if (attack_type == 0) {
			Battle_CreateGB(0, 0, 0, bb.x - 100, bb.y + 100, 45, 0, 41, 30, 1, 2, 0, ENEMY_NAME_SKELLY);
			Battle_CreateGB(0, 0, 0, bb.x + 100, bb.y + 100, 135, 0, 41, 30, 1, 2, 0, ENEMY_NAME_SKELLY);
			Battle_CreateGB(0, 0, 0, bb.x + 100, bb.y - 100, 225, 0, 41, 30, 1, 2, 0, ENEMY_NAME_SKELLY);
			Battle_CreateGB(0, 0, 0, bb.x - 100, bb.y - 100, 315, 0, 41, 30, 1, 2, 0, ENEMY_NAME_SKELLY);
		}
		else {
	        Battle_CreateGB(0, 0, 0, bb.x - 100, bb.y, 0, 0, 41, 30, 1, 2, 0, ENEMY_NAME_SKELLY);
	        Battle_CreateGB(0, 0, 0, bb.x, bb.y + 100, 90, 0, 41, 30, 1, 2, 0, ENEMY_NAME_SKELLY);
	        Battle_CreateGB(0, 0, 0, bb.x + 100, bb.y, 180, 0, 41, 30, 1, 2, 0, ENEMY_NAME_SKELLY);
	        Battle_CreateGB(0, 0, 0, bb.x, bb.y - 100, 270, 0, 41, 30, 1, 2, 0, ENEMY_NAME_SKELLY);
		}
	}
	if (time == 10) {
		Battle_CreateBoneWall(DIR.DOWN, 18, 40, 15);
		Battle_CreateBoneWall(DIR.LEFT, 18, 40, 15);
		Battle_CreateBoneWall(DIR.RIGHT, 18, 40, 15);
		Battle_CreateBoneWall(DIR.UP, 18, 40, 15);
	}
}
if (attack_type == 2) {
	if (time == 9) {
		Battle_BoardTransform(65, 65, 65, 65, bb.x, bb.y, 0);
	
		Battle_SetSoul(battle_soul_blue);
		bs.dir = DIR.DOWN;
	
		bs.x = bb.x;
		bs.y = bb.y;
	}
	if (time == 10) {
		Battle_Slam(DIR.DOWN);
		
		Battle_CreateBoneWall(DIR.LEFT, 57, 20, 520);
		Battle_CreateBoneWall(DIR.RIGHT, 57, 20, 520);
	}
	if (Battle_Repeat(35, 135, 25)) {
		var _bone0 = Battle_CreateBone(bb.x - 70, bb.y - 65, 101, 180, 0, 30);
		_bone0.image_index = 1;
		Anim_Create(_bone0, "x", 0, 0, bb.x - 70, 140, 30);
	
		var _bone1 = Battle_CreateBone(bb.x + 70, bb.y + 65, 15, 0, 0, 30);
		_bone1.image_index = 1;
		Anim_Create(_bone1, "x", 0, 0, bb.x + 70, -140, 30);
	}
}
if (attack_type == 3) {
	if (time == 0) {
		attack_variation = choose(0, 1);
	}
	if (time == 9) {
		Battle_BoardTransform(65, 65, 65, 65, bb.x, bb.y, 0);
	
		Battle_SetSoul(battle_soul_red);
	
		bs.x = bb.x;
		bs.y = bb.y;
		
		Battle_CreateGB(0, 0, 0, bb.x - 100, bb.y, 0, 0, 156, 30, 2, 2, 0, ENEMY_NAME_SKELLY);
		Battle_CreateGB(0, 0, 0, bb.x, bb.y - 100, 270, 0, 156, 30, 2, 2, 0, ENEMY_NAME_SKELLY);
	}
	if (attack_variation == 0) {
		if (Battle_Repeat(25, 85, 30)) {
			var _bone0 = Battle_CreateBone(bb.x - 75, bb.y, 75, 0, 0, 60);
			Anim_Create(_bone0, "x", 0, 0, bb.x - 75, 150, 60);
		
			var _bone1 = Battle_CreateBone(bb.x + 75, bb.y, 75, 180, 0, 60);
			Anim_Create(_bone1, "x", 0, 0, bb.x + 75, -150, 60);
		}
		if (time == 115) {
			var _bone0 = Battle_CreateBone(bb.x - 75, bb.y, 75, 180, 0, 60);
			Anim_Create(_bone0, "x", 0, 0, bb.x - 75, 150, 60);
		
			var _bone1 = Battle_CreateBone(bb.x + 75, bb.y, 75, 0, 0, 60);
			Anim_Create(_bone1, "x", 0, 0, bb.x + 75, -150, 60);
		}
	}
	else {
		if (Battle_Repeat(25, 85, 30)) {
			var _bone0 = Battle_CreateBone(bb.x, bb.y - 75, 75, 270, 0, 60);
			Anim_Create(_bone0, "y", 0, 0, bb.y - 75, 150, 60);
		
			var _bone1 = Battle_CreateBone(bb.x, bb.y + 75, 75, 90, 0, 60);
			Anim_Create(_bone1, "y", 0, 0, bb.y + 75, -150, 60);
		}
		if (time == 115) {
			var _bone0 = Battle_CreateBone(bb.x, bb.y - 75, 75, 90, 0, 60);
			Anim_Create(_bone0, "y", 0, 0, bb.y - 75, 150, 60);
		
			var _bone1 = Battle_CreateBone(bb.x, bb.y + 75, 75, 270, 0, 60);
			Anim_Create(_bone1, "y", 0, 0, bb.y + 75, -150, 60);
		}
	}
}
if (attack_type == 4) {
	if (time == 0) {
		attack_variation = choose(0, 1);
	}
	if (attack_variation == 0) {
		if (time == 9) {
			Battle_BoardTransform(65, 65, 195, 195, bb.x, bb.y, 0);
	
			Battle_SetSoul(battle_soul_blue);
			bs.dir = DIR.DOWN;
	
			bs.x = bb.x + 130;
			bs.y = bb.y + 57;
		}
		if (time == 30) {
			for (var i = 0; i < 20; i++) {
				var _bone0 = Battle_CreateBone(bb.x - 205 - i * 24, bb.y + 65, (i < 10 ? 65 : 15), 0, 0, 90);
				_bone0.speed = (195 + 195 + 20 * 24) / 90;
				_bone0.direction = 0;
			}
		}
		if (time == 102) {
			for (var i = 0; i < 20; i++) {
				var _bone0 = Battle_CreateBone(bb.x - 205 - i * 24, bb.y + 65, (i < 10 ? 65 : 15), 0, 0, 90);
				_bone0.speed = (195 + 195 + 20 * 24) / 90;
				_bone0.direction = 0;
			}
		}
		if (time == 134) {
			Battle_CreateGB(-50, bb.y + 50, 180, bb.x - 230, bb.y + 50, 0, 40, 10, 30, 2, 2, 0, ENEMY_NAME_SKELLY);
		}
	}
	else {
		if (time == 9) {
			Battle_BoardTransform(65, 65, 195, 195, bb.x, bb.y, 0);
	
			Battle_SetSoul(battle_soul_blue);
			bs.dir = DIR.DOWN;
	
			bs.x = bb.x - 130;
			bs.y = bb.y + 57;
		}
		if (time == 30) {
			for (var i = 0; i < 20; i++) {
				var _bone0 = Battle_CreateBone(bb.x + 205 + i * 24, bb.y + 65, (i < 10 ? 65 : 15), 0, 0, 90);
				_bone0.speed = -(195 + 195 + 20 * 24) / 90;
				_bone0.direction = 0;
			}
		}
		if (time == 102) {
			for (var i = 0; i < 20; i++) {
				var _bone0 = Battle_CreateBone(bb.x + 205 + i * 24, bb.y + 65, (i < 10 ? 65 : 15), 0, 0, 90);
				_bone0.speed = -(195 + 195 + 20 * 24) / 90;
				_bone0.direction = 0;
			}
		}
		if (time == 134) {
			Battle_CreateGB(690, bb.y + 50, 0, bb.x + 230, bb.y + 50, 180, 40, 10, 30, 2, 2, 0, ENEMY_NAME_SKELLY);
		}
	}
}
if (attack_type == 5) {
	if (time == 9) {
		Battle_BoardTransform(65, 65, 65, 65, bb.x, bb.y, 0);
	
		Battle_SetSoul(battle_soul_blue);
		bs.dir = DIR.DOWN;
	
		bs.x = bb.x;
		bs.y = bb.y + 57;
	}
	if (time == 10) {
		Battle_CreateWarning(bb.x - 62, bb.y - 64, bb.x - 50, bb.y + 64, 40);
		Battle_CreateWarning(bb.x + 50, bb.y - 64, bb.x + 62, bb.y + 64, 40);
	
		var _bone0 = Battle_CreateBone(bb.x - 56, bb.y + 75, 5, 0, 0, 112);
		Anim_Create(_bone0, "length", 0, 0, 5, 135, 6, 40);
		Anim_Create(_bone0, "length", ANIM_TWEEN.SINE, ANIM_EASE.IN, 140, -135, 60, 52);
	
		var _bone1 = Battle_CreateBone(bb.x + 56, bb.y + 75, 5, 0, 0, 112);
		Anim_Create(_bone1, "length", 0, 0, 5, 135, 6, 40);
		Anim_Create(_bone1, "length", ANIM_TWEEN.SINE, ANIM_EASE.IN, 140, -135, 60, 52);
	
		var _event0 = function() {
			repeat (4) {
				var _bone0 = Battle_CreateBone(bb.x - 56, bb.y - 90, 20, random(360), choose(0, 1, 2), 75, 10);
				_bone0.rotation = random_range(-2, 2);
			
				Anim_Create(_bone0, "x", 0, 0, bb.x - 56, random_range(-65, 65), 75);
				Anim_Create(_bone0, "y", ANIM_TWEEN.SINE, ANIM_EASE.IN, bb.y - 90 - random(20), 200, 75);
			
				audio_play_sound(snd_dong, 0, 0);
			
				var _bone1 = Battle_CreateBone(bb.x + 56, bb.y - 90, 20, random(360), choose(0, 1, 2), 75, 10);
				_bone1.rotation = random_range(-2, 2);
			
				Anim_Create(_bone1, "x", 0, 0, bb.x + 56, random_range(-65, 65), 75);
				Anim_Create(_bone1, "y", ANIM_TWEEN.SINE, ANIM_EASE.IN, bb.y - 90 - random(20), 200, 75);
			
				audio_play_sound(snd_dong, 0, 0);
			}
		}
		Delay_Event(_event0, 46);
	}
}