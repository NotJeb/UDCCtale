if (can_damage) {
	if (place_meeting(x,y,battle_soul))
		event_user(0);
		
	x = x_center + random_range(-2, 2);
	y = y_center + random_range(-2, 2);
	
	var _soul_angle = point_direction(x, y, battle_soul.x, battle_soul.y);
	x_center += lengthdir_x(2, _soul_angle);
	y_center += lengthdir_y(2, _soul_angle);
	
	image_xscale = (battle_soul.x < x) ? xscale : xscale * -1;
}