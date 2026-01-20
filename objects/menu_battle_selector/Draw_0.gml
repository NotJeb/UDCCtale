for (var i = -4; i < 5; i++) {
	var _display_index = (selection_display >= global.selected_battle) ? floor(selection_display) : ceil(selection_display) - 1;
	
	if (_display_index + i >= 1) {
		var _display_offset = selection_display % 1;
		var _x_center = x + (i - _display_offset) * 125;
		var _y_center = y - power(abs(i - _display_offset), 2.5);
	
		if (_display_index + i == global.selected_battle) draw_set_color(c_yellow);
		
		// Wrap invalid values
		var _battle_index = (_display_index + i) % array_length(world.enemy.title);
		if (_battle_index < 0) _battle_index = array_length(world.enemy.title) + _battle_index;
		
		var _alpha = 1 - abs(320 - _x_center) / (120 * 5);
		draw_set_alpha(_alpha);
		draw_rectangle(_x_center - 50, _y_center - 50, _x_center + 50, _y_center + 50, 0);
		draw_set_alpha(1);
		draw_set_color(c_black);
		draw_rectangle(_x_center - 48, _y_center - 48, _x_center + 48, _y_center + 48, 0);
		draw_set_color(c_white);
		
		var _badges = world.badges[_battle_index];
		var _color = make_color_hsv(0, 0, 255 * _alpha);
		if (_badges.no_hit)
			draw_sprite_ext(spr_badge, 2, _x_center - 49, _y_center - 49, 1, 1, 0, _color, 1);
		else if (_badges.no_heal)
			draw_sprite_ext(spr_badge, 1, _x_center - 49, _y_center - 49, 1, 1, 0, _color, 1);
		else if (_badges.completion)
			draw_sprite_ext(spr_badge, 0, _x_center - 49, _y_center - 49, 1, 1, 0, _color, 1);
		
		var _sprite = asset_get_index($"spr_menu_{world.enemy.name[_battle_index]}");
		if (!sprite_exists(_sprite)) _sprite = spr_menu_empty;
		
		draw_sprite_ext(_sprite, 0, _x_center, _y_center, 1, 1, 0, c_white, _alpha);
	
		draw_set_halign(fa_middle);
		draw_set_font(font_mars_needs_cunnilingus);
		draw_set_alpha(_alpha);
		draw_text_transformed(_x_center, _y_center + 55, world.enemy.title[_battle_index], 0.5, 0.5, 0);
		draw_set_halign(fa_left);
		draw_set_alpha(1);
	}
}

var _battle_index = global.selected_battle % array_length(world.enemy.title);
if (_battle_index < 0) _battle_index = array_length(world.enemy.title) + _battle_index;
	
draw_set_halign(fa_middle);
draw_set_font(font_mars_needs_cunnilingus);
draw_text_ext_transformed(x, y + 100, world.enemy.description[_battle_index], 20, 540 / 0.6, 0.6, 0.6, 0);
draw_set_halign(fa_left);