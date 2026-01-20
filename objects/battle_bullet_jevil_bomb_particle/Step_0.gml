// Inherit the parent event
event_inherited();

if (image_index == 2) {
	if (circ_distance < 40)
		circ_distance += 4;
	else {
		x_center += lengthdir_x(speed, direction);
		y_center += lengthdir_y(speed, direction);
		siner += pi / 60;
	}
	
	x = x_center + cos(siner) * circ_distance;
	y = y_center + sin(siner) * circ_distance;
}