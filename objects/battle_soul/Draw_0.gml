var STATE=Battle_GetState();
var MENU=Battle_GetMenu();
if(STATE==BATTLE_STATE.CUTSCENE || STATE==BATTLE_STATE.IN_TURN || STATE==BATTLE_STATE.TURN_PREPARATION || (STATE==BATTLE_STATE.MENU && MENU!=BATTLE_MENU.FIGHT_AIM && MENU!=BATTLE_MENU.FIGHT_ANIM && MENU!=BATTLE_MENU.FIGHT_DAMAGE)){
	draw_sprite_ext(sprite_index, image_index, round(x), round(y), image_xscale, image_yscale, image_angle, image_blend, image_alpha);
}