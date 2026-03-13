draw_sprite_ext(spr_pixel,0,_bg_x,_bg_y,_bg_width,_bg_height,_angle,color_bg,alpha);

if(_angle%360==0){
	draw_surface_part_ext(_surface,_surface_x,_surface_y,_surface_width,_surface_height,_surface_x,_surface_y,1,1,color,alpha);
}
else {
	surface_set_target(mask_surface);
	draw_clear_alpha(0,0);
	draw_sprite_ext(spr_pixel,0,_bg_x,_bg_y,_bg_width,_bg_height,_angle,c_white,1);
	surface_reset_target();
	// set up the shader:
	shader_set(shdClipMask);
	var u_mask = shader_get_sampler_index(shdClipMask,"u_mask");
	texture_set_stage(u_mask,surface_get_texture(mask_surface));
	var u_rect = shader_get_uniform(shdClipMask,"u_rect");
	shader_set_uniform_f(u_rect,0,0,room_width,room_height);
	// draw things:
	draw_sprite_ext(spr_pixel,0,_bg_x,_bg_y,_bg_width,_bg_height,_angle,color_bg,alpha);
	draw_surface(_surface,0,0);
	// finish:
	shader_reset();
}

draw_sprite_ext(spr_pixel,0,_frame_up_x,_frame_up_y,_frame_up_width,_frame_up_height,_angle,color_frame,alpha);
draw_sprite_ext(spr_pixel,0,_frame_left_x,_frame_left_y,_frame_left_width,_frame_left_height,_angle,color_frame,alpha);
draw_sprite_ext(spr_pixel,0,_frame_down_x,_frame_down_y,_frame_down_width,_frame_down_height,_angle,color_frame,alpha);
draw_sprite_ext(spr_pixel,0,_frame_right_x,_frame_right_y,_frame_right_width,_frame_right_height,_angle,color_frame,alpha);