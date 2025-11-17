// Inherit the parent event
event_inherited();

if (time == 0) {
	Battle_BoardTransform(130 + 65, 65, 130, 130);
}
if (Battle_Repeat(0, 1200)) {
	repeat(120) {
		var _x = random_range(100, 540);
		var _y = random_range(100, 380);
		var _angle = point_direction(_x, _y, bs.x, bs.y);
		Battle_CreateGB(random(640), -50, _angle - 180, _x, _y, _angle, 40, 0, 30, 2, choose(1, 2));
	}
}
if (Battle_Repeat(1200, 1200)) {
	var _bone0;
	var _x;
	var _y;
	repeat(10) {
		switch (irandom(3)) {
			case 0:
				_x = random(640);
				_bone0 = Battle_CreateBone(_x, -50, 100, 0, choose(1, 2), 120);
				_bone0.direction = point_direction(_x, -50, bs.x, bs.y);
				break;
			case 1:
				_y = random(480);
				_bone0 = Battle_CreateBone(690, _y, 100, 0, choose(1, 2), 120);
				_bone0.direction = point_direction(690, _y, bs.x, bs.y);
				break;
	
			case 2:
				_x = random(640);
				_bone0 = Battle_CreateBone(_x, 530, 100, 0, choose(1, 2), 120);
				_bone0.direction = point_direction(_x, 530, bs.x, bs.y);
				break;
	
			case 3:
				_y = random(480);
				_bone0 = Battle_CreateBone(-50, _y, 100, 0, choose(1, 2), 120);
				_bone0.direction = point_direction(-50, _y, bs.x, bs.y);
				break;
		}
		_bone0.speed = 10;
		_bone0.rotation = -5;
		_bone0.rotation = choose(-5, 5);
		_bone0.out = true;
	}
}