function Dialog_Event0() {
	battle_soul.sprite_index = spr_battle_soul_yellow_pink;
	audio_play_sound(snd_ding, 0, 0);
}
function Dialog_Event1(_sprite_num) {
	var _sprite = [spr_enemy_minus_dance, spr_enemy_minus_talk, spr_enemy_minus_dance_sad];
	battle_enemy_minus_dummy.sprite_index = _sprite[_sprite_num];
}
function Dialog_Event2(_image_index) {
	battle_enemy_shaun_and_minus.image_index = _image_index;
}
function Dialog_Event3() {
	battle_turn.paused = false;
}