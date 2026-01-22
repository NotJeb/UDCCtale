var _color = make_color_rgb(color_mid[0] + sin(siner / 180) * color_diff[0], color_mid[1] + sin(siner / 180) * color_diff[1], color_mid[2] + sin(siner / 180) * color_diff[2]);

gpu_set_blendmode(bm_add);

draw_set_alpha(effect_intensity);
draw_rectangle_color(0, 440 + sin(siner / 120) * 15, 640, 480, c_black, c_black, _color, _color, 0);

draw_set_alpha(effect_intensity / 2);
draw_rectangle_color(0, 450 + sin(siner / 120) * 10, 640, 480, c_black, c_black, _color, _color, 0);

draw_set_alpha(effect_intensity / 4);
draw_rectangle_color(0, 460 + sin(siner / 120) * 5, 640, 480, c_black, c_black, _color, _color, 0);

draw_set_alpha(1);

gpu_set_blendmode(bm_normal);