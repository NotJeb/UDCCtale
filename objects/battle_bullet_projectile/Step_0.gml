switch (custom) {
	case 1:
		if (can_damage) {
			x = x_center + random_range(-2, 2);
			y = y_center + random_range(-2, 2);
	
			var _soul_angle = point_direction(x, y, battle_soul.x, battle_soul.y);
			x_center += lengthdir_x(move_speed, _soul_angle);
			y_center += lengthdir_y(move_speed, _soul_angle);
	
			xscale = (battle_soul.x < x) ? 1 : -1;
		}
		break;
	case 2:
		siner1 += pi / 240;
		siner2 += pi / 45;
		
		x = x_center + sin(siner1) * width;
		y = y_center + sin(siner2) * height;
		
		if ((siner1 + pi + pi / 2) % (pi * 2) == 0) {
			Anim_Create(id, "xscale", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, 1, -2, 30);
			Anim_Create(id, "image_alpha", 0, 0, 1, -0.5, 30);
			depth = DEPTH_BATTLE.BULLET_OUTSIDE_LOW + 1;
		}
		else if ((siner1 + pi / 2) % (pi * 2) == 0) {
			Anim_Create(id, "xscale", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, -1, 2, 30);
			Anim_Create(id, "image_alpha", 0, 0, 0.5, 0.5, 30);
			depth = DEPTH_BATTLE.BULLET_OUTSIDE_LOW;
		}
		break;
}

var _scale = size / max(sprite_get_width(sprite_index), sprite_get_height(sprite_index));
image_xscale = _scale * xscale;
image_yscale = _scale * yscale;

image_angle += rotation;

if (can_damage && place_meeting(x,y,battle_soul))
	event_user(0);