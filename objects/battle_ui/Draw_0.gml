draw_set_alpha(image_alpha);
draw_set_font(font_mars_needs_cunnilingus);
draw_set_color(c_white);
draw_text(x, y, $"{Player_GetName()}   LV {Player_GetLv()}");

draw_set_font(font_ut_hp);
draw_text(x + 214, y + 4, "HP");

draw_sprite_ext(spr_pixel, 0, x + 245, y - 1, Player_GetHpMax() * 1.2, 21, 0, c_red, image_alpha);
draw_sprite_ext(spr_pixel, 0, x + 245, y - 1, Player_GetHp() * 1.2, 21, 0, c_yellow, image_alpha);

if (battle.kr_enabled) {
	if (battle.kr > 0) {
	    draw_set_color(kr_color); // This is gonna set the KR label and HP Counter below to KR color
		draw_sprite_ext(spr_pixel, 0, x + 245 + (Player_GetHp() * 1.2), y - 1, -battle.kr * 1.2, 21, 0, kr_color, image_alpha);
	}
	draw_text(x + 245 + 10 + (Player_GetHpMax() * 1.2), y + 4, kr_text);
}

// HP Counter
draw_set_font(font_mars_needs_cunnilingus);

var _gamemaker_workaround = $"0{Player_GetHp()}";
var _counter = $"{(Player_GetHp() < 10) ? _gamemaker_workaround : Player_GetHp()}/{(Player_GetHpMax() < 10) ? _gamemaker_workaround: Player_GetHpMax()}";

var _offset_x = !battle.kr_enabled ? 14 : 20 + string_width("UWU");
draw_text(x + 245 + _offset_x + (Player_GetHpMax() * 1.2), y, _counter);
	
draw_set_alpha(1);
