var STATE=Battle_GetState();
var MENU=Battle_GetMenu();
if(STATE==BATTLE_STATE.CUTSCENE || STATE==BATTLE_STATE.IN_TURN || STATE==BATTLE_STATE.TURN_PREPARATION || (STATE==BATTLE_STATE.MENU && MENU!=BATTLE_MENU.FIGHT_AIM && MENU!=BATTLE_MENU.FIGHT_ANIM && MENU!=BATTLE_MENU.FIGHT_DAMAGE)){
	draw_sprite_ext(sprite_index, image_index, round(x), round(y), image_xscale, image_yscale, image_angle, image_blend, image_alpha);
}

if (battle_ui.hp_display) {
	draw_set_font(font_mars_needs_cunnilingus);
	draw_set_halign(fa_middle);
	
	var _gamemaker_workaround = $"0{Player_GetHp()}";
	var _counter = $"{(Player_GetHp() < 10) ? _gamemaker_workaround : Player_GetHp()}/{(Player_GetHpMax() < 10) ? _gamemaker_workaround: Player_GetHpMax()}";

	draw_text(x, y - sprite_height / 2 - 20, _counter);
	
	draw_set_halign(fa_left);
}