// Inherit the parent event
event_inherited();

if (time == 0) {
	Battle_BoardTransform(65, 65, 65, 65);
}
if (time == 10) {
	Battle_SetSoul(battle_soul_blue);
}
if (Battle_Repeat(40, 640, 60)) {
	var _x = random_range(bb.x - 59, bb.x + 59);
	Battle_CreateWarning(_x - 6, bb.y - 64, _x + 6, bb.y + 64, 40);
	
	var _bone0 = Battle_CreateBone(_x, bb.y + 75, 5, 0, 0, 112);
	Anim_Create(_bone0, "length", 0, 0, 5, 135, 6, 40);
	Anim_Create(_bone0, "length", ANIM_TWEEN.SINE, ANIM_EASE.IN, 140, -135, 60, 52);
	
	var _event0 = function(_x) {
		repeat (4) {
			var _bone0 = Battle_CreateBone(_x, bb.y - 90, 20, random(360), choose(0, 1, 2), 60, 10);
			_bone0.rotation = random_range(-2, 2);
			
			Anim_Create(_bone0, "x", 0, 0, _x, random_range(-30, 30), 60);
			Anim_Create(_bone0, "y", ANIM_TWEEN.SINE, ANIM_EASE.IN, bb.y - 90 - random(20), 200, 60);
			
			audio_play_sound(snd_dong, 0, 0);
		}
	}
	Delay_Event(_event0, 46, [_x]);
}
if (Battle_Repeat(100, 580, 120)) {
	var _side = choose(-1, 1);
	Battle_CreateGB(bb.x + 370 * _side, bb.y + 50, 270 + 90 * _side, bb.x + 100 * _side, bb.y + 50, 90 + 90 * _side, 30, 10, 30, 1, 2, ENEMY_NAME_SKELLY);
}