// Inherit the parent event
event_inherited();

if (time == 0) {
	Battle_BoardTransform(130 + 65, 65, 130, 130);
}
if (Battle_Repeat(0, 1200)) {
	var _board0;
	var _x;
	var _y;
	repeat(2) {
		switch (irandom(3)) {
			case 0:
				_x = random(640);
				_board0 = Battle_CreateBoardCutout(20, 20, 20, 20, _x, -50, 90);
				_board0.direction = point_direction(_x, -50, bs.x, bs.y);
				break;
			case 1:
				_y = random(480);
				_board0 = Battle_CreateBoardCutout(20, 20, 20, 20, 690, _y, 90);
				_board0.direction = point_direction(690, _y, bs.x, bs.y);
				break;
	
			case 2:
				_x = random(640);
				_board0 = Battle_CreateBoardCutout(20, 20, 20, 20, _x, 540, 90);
				_board0.direction = point_direction(_x, 530, bs.x, bs.y);
				break;
	
			case 3:
				_y = random(480);
				_board0 = Battle_CreateBoardCutout(20, 20, 20, 20, -50, _y, 90);
				_board0.direction = point_direction(-50, _y, bs.x, bs.y);
				break;
		}
		_board0.speed = 10;
		_board0.rotation = choose(-5, 5);
	}
}