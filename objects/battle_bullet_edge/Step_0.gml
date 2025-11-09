// Inherit the parent event
event_inherited();

switch custom {
	case 0:
		x = x_center + lengthdir_x(circ_distance, image_angle - 90) + lengthdir_x(tangental_offset, image_angle);
		y = y_center + lengthdir_y(circ_distance, image_angle - 90) + lengthdir_y(tangental_offset, image_angle);
		break;
}

image_angle += rotation;