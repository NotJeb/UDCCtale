// Inherit the parent event
event_inherited();

vel_y += 0.2;

if (place_meeting(x, y, battle_board._inst_frame_down)) {
	y = battle_board._frame_down_y - (196 * image_yscale);
	vel_y *= -0.9;
}

image_angle -= vel_x;
x += vel_x;
y += vel_y;