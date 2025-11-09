// Draw Dleckon
draw_sprite_ext(spr_enemy_dleckon_body_bottom, 0, x, y, 1, 1, 0, c_white, image_alpha);
draw_sprite_ext(spr_enemy_dleckon_body_top, body, x, y - 72, 1, 1, 0, c_white, image_alpha);
draw_sprite_ext(spr_enemy_dleckon_head, head, x, y - 142, 1, 1, 0, c_white, image_alpha);

// Draw purple at bottom
gpu_set_blendmode(bm_add);

draw_set_alpha(effect_intensity);
draw_rectangle_color(0, 440 + sin(siner / 60) * 20, 640, 480, c_black, c_black, c_purple, c_purple, 0);

draw_set_alpha(effect_intensity / 2);
draw_rectangle_color(0, 460 + sin(siner / 60) * 10, 640, 480, c_black, c_black, c_purple, c_purple, 0);

draw_set_alpha(1);

gpu_set_blendmode(bm_normal);