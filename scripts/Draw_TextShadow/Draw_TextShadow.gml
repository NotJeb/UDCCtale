function Draw_TextShadow(_x, _y, _text, _shadow_size, _font = font_mars_needs_cunnilingus, _color = c_white){
	draw_set_font(_font);
	draw_set_color(c_black);
	
	var _shadow_detail = 8;
	for (var i = 0; i < _shadow_detail; i++) {
		var _circ = (i * pi) / (_shadow_detail / 2);
		draw_text(_x + cos(_circ) * _shadow_size, _y + sin(_circ) * _shadow_size, _text);
	}
	
	draw_set_color(_color);
	draw_text(_x, _y, _text);
	draw_set_color(c_white);
}