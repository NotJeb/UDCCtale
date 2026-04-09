var sx = window_get_width()  / surface_get_width(application_surface);
var sy = window_get_height() / surface_get_height(application_surface);

for (var i = 0; i < effect_intensity; i++) {
	var _circ = 2 * pi * i / effect_intensity;
	draw_surface_ext(application_surface, cos(_circ) * sqrt(effect_intensity) * 5 * sx, sin(_circ) * sqrt(effect_intensity) * 5 * sy, sx, sy, 0, c_white, 0.1);
}