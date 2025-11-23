// Inherit the parent event
event_inherited();

if (time == 0) {
	Battle_BoardTransform(65, 65, 65, 65);
}
if (time == 10) {
	Battle_SetSoul(battle_soul_blue_orange);
	Battle_SoulDasher(true);
}
if (Battle_Repeat(40, 640, 60)) {
	var _x = random_range(bb.x - 59, bb.x + 59);
	Battle_CreateWarning(_x - 6, bb.y - 64, _x + 6, bb.y + 64, 30);
	
	var _bone0 = Battle_CreateBone(_x, bb.y + 75, 5, 0, 0, 72);
	Anim_Create(_bone0, "length", 0, 0, 5, 135, 6, 30);
	Anim_Create(_bone0, "length", ANIM_TWEEN.SINE, ANIM_EASE.IN, 140, -135, 30, 42);
	
	var _event0 = function(_x) {
		repeat (4) {
			var _bone0 = Battle_CreateBone(_x, bb.y - 80, 20, random(360), choose(1, 2), 40);
			_bone0.rotation = random_range(-2, 2);
			
			Anim_Create(_bone0, "x", 0, 0, _x, random_range(-50, 50), 40);
			Anim_Create(_bone0, "y", ANIM_TWEEN.SINE, ANIM_EASE.IN, bb.y - 80, 160, 40);
			
			audio_play_sound(snd_dong, 0, 0);
		}
	}
	Delay_Event(_event0, 36, [_x]);
}