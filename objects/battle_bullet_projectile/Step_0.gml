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
		siner1 += 1.1 / 2;
		siner2 += 1 / 2;
		
		var _circ = sin(siner1 / 20) - sin((siner1 - 1) / 20);
		
		x = battle_board.x - (sin(siner1 / 20) * 240);
		y += (tag == 0 ? 1 : -1) * (sin(siner2 / 10) * 3);
		xscale = clamp(-_circ * 25, -1, 1);
		image_blend = _circ > 0 ? make_color_rgb(138 / 2, 0, 196 / 2) : make_color_rgb(138, 0, 196);
		
		can_damage = image_alpha == 1 && _circ <= 0;
		break;
}

var _scale = size / max(sprite_get_width(sprite_index), sprite_get_height(sprite_index));
image_xscale = _scale * xscale;
image_yscale = _scale * yscale;

image_angle += rotation;

if (can_damage && place_meeting(x,y,battle_soul))
	event_user(0);