y = end_y;
mode = 1;
image_xscale = 0;
Anim_Create(id, "image_alpha", ANIM_TWEEN.SINE, ANIM_EASE.IN, 1, -1, 30);
Anim_Create(id, "image_xscale", ANIM_TWEEN.SINE, ANIM_EASE.OUT, 20, 30, 30);
audio_play_sound(snd_slash, 0, 0);
Camera_Shake(1, 1, 0.5, 0.5);

switch (type) {
	case 0:
		for (var i = -30; i < 60; i += 30) {
			var _particle = instance_create_depth(x, y, depth, battle_bullet_jevil_bomb_particle);
			_particle.direction = point_direction(x, y, battle_soul.x, battle_soul.y) + i;
			_particle.image_angle = _particle.direction;
			_particle.image_index = type;
			_particle.speed = 7;
		}
		break;
	case 1:
		for (var i = 0; i < 3; i++) {
			var _particle = instance_create_depth(x, y, depth, battle_bullet_jevil_bomb_particle);
			_particle.direction = point_direction(x, y, battle_soul.x, battle_soul.y);
			_particle.image_angle = _particle.direction;
			_particle.image_index = type;
			_particle.speed = 7 - i * 0.5;
		}
		break;
	case 2:
		for (var i = 0; i < 4; i++) {
			var _particle = instance_create_depth(x, y, depth, battle_bullet_jevil_bomb_particle);
			_particle.direction = point_direction(x, y, battle_soul.x, battle_soul.y);
			_particle.image_index = type;
			_particle.speed = 5;
			_particle.x_center = x;
			_particle.y_center = y;
			_particle.siner = (i + 0.5) * (pi / 2);
			_particle.circ_distance = 0;
		}
		break;
	case 3:
		var _angle = random(30);
		for (var i = 0; i < 12; i++) {
			var _particle = instance_create_depth(x, y, depth, battle_bullet_jevil_bomb_particle);
			_particle.direction = _angle + i * 30;
			_particle.image_angle = _particle.direction;
			_particle.image_index = type;
			_particle.speed = 5;
		}
		break;
}