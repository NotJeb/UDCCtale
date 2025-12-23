// Inherit the parent event
event_inherited();

if (time == 0) {
	Battle_BoardTransform(65, 65, 185, 185);
}
if (Battle_Repeat(10, 22, 6)) {
	var _bone0 = Battle_CreateBone(bb.x + 200, bb.y + 65, 60, 0, 0, 200);
	_bone0.direction = DIR.LEFT;
	_bone0.speed = 2;
	
	var _bone1 = Battle_CreateBone(bb.x + 200, bb.y - 65, 55, 180, 0, 200);
	_bone1.direction = DIR.LEFT;
	_bone1.speed = 2;
}
if (Battle_Repeat(28, 430, 6)) {
	var _bone0 = Battle_CreateBone(bb.x + 200, bb.y + 75, 40, 0, 0, 200);
	_bone0.direction = DIR.LEFT;
	_bone0.speed = 2;
}
if (time == 40) {
	var _platform0 = Battle_CreatePlatform(bb.x + 200, bb.y + 25, 20, 200, 0, 0);
	_platform0.direction = DIR.LEFT;
	_platform0.speed = 2;
}
if (time == 100) {
	var _bone0 = Battle_CreateBone(bb.x + 200, bb.y + 65, 80, 0, 0, 200);
	_bone0.direction = DIR.LEFT;
	_bone0.speed = 2.5;
	
	var _bone1 = Battle_CreateBone(bb.x + 200, bb.y - 65, 35, 180, 0, 200);
	_bone1.direction = DIR.LEFT;
	_bone1.speed = 2.5;
	
	var _platform0 = Battle_CreatePlatform(bb.x + 225, bb.y + 5, 30, 200, 0, 1);
	_platform0.direction = DIR.LEFT;
	_platform0.speed = 2.5;
	
	var _platform1 = Battle_CreatePlatform(bb.x + 270, bb.y + 25, 30, 200, 0, 0);
	_platform1.direction = DIR.LEFT;
	_platform1.speed = 2.5;
	
	var _bone2 = Battle_CreateBone(bb.x + 270, bb.y - 65, 70, 180, 0, 200);
	_bone2.direction = DIR.LEFT;
	_bone2.speed = 2.5;
}
if (time == 190) {
	Battle_CreateGB(bb.x + 370, bb.y + 25, 270 + 90, bb.x + 220, bb.y + 25, 90 + 90, 30, 10, 60, 2, 2, 0, ENEMY_NAME_SKELLY);
}
if (time == 220) {
	var _bone0 = Battle_CreateBone(bb.x + 200, bb.y - 30, 60, 0, 0, 200, 30);
	_bone0.direction = DIR.LEFT;
	_bone0.speed = 2.5;
	_bone0.rotation = -4;
	
	var _bone1 = Battle_CreateBone(bb.x + 200, bb.y + 65, 55, 0, 0, 200);
	_bone1.direction = DIR.LEFT;
	_bone1.speed = 2.5;
	
	var _platform0 = Battle_CreatePlatform(bb.x + 200, bb.y + 5, 30, 200, 0, 0);
	_platform0.direction = DIR.LEFT;
	_platform0.speed = 2.5;
}
if (time == 270) {
	var _bone0 = Battle_CreateBone(bb.x + 200, bb.y - 30, 60, 0, 0, 200, 30);
	_bone0.direction = DIR.LEFT;
	_bone0.speed = 2.5;
	_bone0.rotation = -4;
	
	var _bone1 = Battle_CreateBone(bb.x + 200, bb.y + 65, 55, 0, 0, 200);
	_bone1.direction = DIR.LEFT;
	_bone1.speed = 2.5;
	
	var _platform0 = Battle_CreatePlatform(bb.x + 200, bb.y + 5, 30, 200, 0, 0);
	_platform0.direction = DIR.LEFT;
	_platform0.speed = 2.5;
}
if (time == 300) {
	var _bone0 = Battle_CreateBone(bb.x - 200, bb.y + 65, 105, 0, 0, 113);
	_bone0.direction = DIR.RIGHT;
	_bone0.speed = 3.3;
	
	var _bone1 = Battle_CreateBone(bb.x - 220, bb.y - 65, 65, 180, 0, 140);
	_bone1.direction = DIR.RIGHT;
	_bone1.speed = 3;
}
if (time == 330) {
	var _platform0 = Battle_CreatePlatform(bb.x + 200, bb.y + 25, 30, 160, 0, 0);
	_platform0.direction = DIR.LEFT;
	_platform0.speed = 2.5;
}
if (time == 350) {
	for (var i = 0; i < 4; i++) {
		var _bone0 = Battle_CreateBone(bb.x + 200 + i * 12, bb.y - 65, 65, 180, 0, 168);
		_bone0.direction = DIR.LEFT;
		_bone0.speed = 4;
	}
}
if (time == 360) {
	for (var i = 0; i < 4; i++) {
		var _bone0 = Battle_CreateBone(bb.x + 200 + i * 12, bb.y + 65, 75, 0, 0, 168);
		_bone0.direction = DIR.LEFT;
		_bone0.speed = 3.5;
	}
}
if (time == 380) {
	var _platform0 = Battle_CreatePlatform(bb.x + 200, bb.y + 5, 30, 134, 0, 0);
	_platform0.direction = DIR.LEFT;
	_platform0.speed = 3;
	
	var _bone0 = Battle_CreateBone(bb.x + 200, bb.y + 65, 55, 0, 0, 134);
	_bone0.direction = DIR.LEFT;
	_bone0.speed = 3;
}
if (time == 390) {
	for (var i = 0; i < 4; i++) {
		var _bone0 = Battle_CreateBone(bb.x + 200 + i * 12, bb.y + 65, 105, 0, 0, 212);
		_bone0.direction = DIR.LEFT;
		_bone0.speed = 2;
	}
}
if (time == 430) {
	var _bone0 = Battle_CreateBone(bb.x - 200, bb.y - 65, 100, 180, 0, 115);
	_bone0.direction = DIR.RIGHT;
	_bone0.speed = 3.5;
}
if (time == 490) {
	Battle_BoardTransform(65, 65, 65, 65, bb.x, bb.y, 20);
	Battle_CreateGB(bb.x + 50, bb.y - 370, 270 + 180, bb.x + 50, bb.y - 100, 270, 30, 10, 30, 2, 2, 0, ENEMY_NAME_SKELLY);
}
if (time == 510) {
	Battle_CreateGB(bb.x + 370, bb.y + 50, 180 + 180, bb.x + 100, bb.y + 50, 180, 30, 10, 30, 2, 2, 0, ENEMY_NAME_SKELLY);
}
if (time == 525) {
	Battle_CreateGB(bb.x - 50, bb.y - 370, 270 + 180, bb.x - 50, bb.y - 100, 270, 30, 10, 30, 1, 2, 0, ENEMY_NAME_SKELLY);
	Battle_CreateGB(bb.x + 50, bb.y - 370, 270 + 180, bb.x + 50, bb.y - 100, 270, 30, 10, 30, 1, 2, 0, ENEMY_NAME_SKELLY);
}
if (time == 530) {
	Battle_CreateGB(bb.x, bb.y - 370, 270 + 180, bb.x, bb.y - 100, 270, 30, 10, 30, 2, 2, 0, ENEMY_NAME_SKELLY);
}