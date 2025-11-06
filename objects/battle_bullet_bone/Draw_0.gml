image_angle = 180 - angle;
image_yscale = length / sprite_get_height(spr_bullet_bone);

var temp_pos = [x, y];
x -= lengthdir_x(origin, image_angle - 90);
y -= lengthdir_y(origin, image_angle - 90);
image_blend = (color == 0) ? c_white : ((color == 1) ? make_color_rgb(20, 196, 255) : make_color_rgb(248, 148, 29));

if(place_meeting(x,y,battle_soul)){
	Battle_CallSoulEventBulletCollision();
}

surface_set_target(Battle_GetBoardSurface());
draw_self();
surface_reset_target();
if (out)
	draw_self();

x = temp_pos[0];
y = temp_pos[1];