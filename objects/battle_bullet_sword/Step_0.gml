var _scale = size / max(sprite_get_width(sprite_index), sprite_get_height(sprite_index));
image_xscale = _scale * xscale;
image_yscale = _scale * yscale;

image_angle += rotation;

if (image_alpha < 1) {
	image_alpha += 1 / 18;
}
else if (speed == 0) {
	audio_play_sound(snd_sword_release, 0, 0);
	direction = image_angle;
	speed = 50;
	if (color == 3) {
		inst_cutout = Battle_CreateBoardCutout(5, 5, sqrt(power(battle_board.up + battle_board.down, 2) + power(battle_board.left + battle_board.right, 2)), 0, x, y);
		inst_cutout.speed = 50;
		inst_cutout.direction = image_angle;
		inst_cutout.angle = image_angle;
	}
}
if (inst_cutout != noone && inst_cutout._inst_frame_down.image_xscale != 0) {
	var _inst_cutout = inst_cutout;
	var _bool = 0;
	var _frames = ["up", "down", "left", "right"];
	
	for (var i = 0; i < 4; i++) {
		var _cutout_frame = variable_instance_get(battle_board, "_inst_frame_" + _frames[i]);
			
		with (_cutout_frame) {
			if (place_meeting(x, y, _inst_cutout._inst_frame_up) ||
				place_meeting(x, y, _inst_cutout._inst_frame_down) ||
				place_meeting(x, y, _inst_cutout._inst_frame_left) ||
				place_meeting(x, y, _inst_cutout._inst_frame_right)) {
				_bool++;
			}
		}
	}
	
	if (_bool > 1) {
		inst_cutout.speed = 0;
		inst_cutout = noone;
	}
}

if (x < -sprite_width || x > 640 + sprite_width || y < -sprite_height || y > 480 + sprite_height)
	instance_destroy();

if (place_meeting(x, y, battle_soul))
	event_user(0);