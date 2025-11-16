Menu_DrawInit();

var _button_text = _menu_screen[_menu].button;
for (var i = 0; i < array_length(_button_text); i++)
	Draw_TextShadow(x, y - 190 + i * 50, _button_text[i](), 2, font_mars_needs_cunnilingus, (i == _menu_button[_menu]) ? c_yellow : c_white);

Menu_DrawUninit();