switch (custom) {
	case 0:
		siner1 += pi;
	
		gpu_set_blendmode(bm_add);
		for (var i = 0; i < 4; i++) {
			var _scale = 1.2 + sin(siner1 / 30) * 0.05;
			var _circ = (siner1 + i * pi * (60 / 2)) / 60;
			draw_sprite_ext(sprite_index, 1, x + cos(_circ) * 5, y + sin(_circ) * 5, image_xscale * _scale, image_yscale * _scale, image_angle, c_yellow, 0.2);
		}
		gpu_set_blendmode(bm_normal);
		break;
	case 1:
		image_blend = make_color_rgb(255, 255 - red_tint, 255 - red_tint);
		break;
}
if (depth > DEPTH_BATTLE.BOARD) {
	surface_set_target(Battle_GetBoardSurface());
	draw_self();
	surface_reset_target();
}
else
	draw_self();