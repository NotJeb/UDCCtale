for (var i = -4; i < 5; i++) {
	var _display_index = (selection_display >= selected_battle) ? floor(selection_display) : ceil(selection_display) - 1;
	
	if (_display_index + i >= 1) {
		var _display_offset = selection_display % 1;
		var _x_center = 320 + (i - _display_offset) * 120;
		var _y_center = 240 - power(abs(i - _display_offset), 2.5);
	
		if (_display_index + i == selected_battle) draw_set_color(c_yellow);
		
		draw_set_alpha(1 - abs(320 - _x_center) / (120 * 5));
		draw_rectangle(_x_center - 50, _y_center - 50, _x_center + 50, _y_center + 50, 1);
		draw_set_color(c_black);
		draw_rectangle(_x_center - 48, _y_center - 48, _x_center + 48, _y_center + 48, 1);
		draw_set_color(c_white);
	
		// Wrap invalid values
		var _battle_index = (_display_index + i) % array_length(titles);
		if (_battle_index < 0) _battle_index = array_length(titles) + _battle_index;
	
		draw_set_halign(fa_middle);
		draw_set_font(font_mars_needs_cunnilingus);
		draw_text_transformed(_x_center, _y_center + 55, titles[_battle_index], 0.5, 0.5, 0);
		draw_set_halign(fa_left);
		draw_set_alpha(1);
	}
}

var _battle_index = selected_battle % array_length(titles);
if (_battle_index < 0) _battle_index = array_length(titles) + _battle_index;
	
draw_set_halign(fa_middle);
draw_set_font(font_mars_needs_cunnilingus);
draw_text_ext_transformed(320, 340, descriptions[_battle_index], 20, 540 / 0.6, 0.6, 0.6, 0);
draw_set_halign(fa_left);