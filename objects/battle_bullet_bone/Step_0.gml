switch custom {
	case 0:
		x = x_center + lengthdir_x(circ_distance, image_angle - 90) + lengthdir_x(tangental_offset, image_angle);
		y = y_center + lengthdir_y(circ_distance, image_angle - 90) + lengthdir_y(tangental_offset, image_angle);
		break;
	case 1:
		if (mode == 0) {
			length += 44 / 20;
			if (length >= 87)
				mode = 1;
		}
		else {
			length -= 44 / 20;
			if (length <= 43)
				mode = 0;
		}
		break;
	case 2:
		x = x_center + sin(battle_turn.siner / sin_time) * sin_length;
		break;
}
angle += rotation;