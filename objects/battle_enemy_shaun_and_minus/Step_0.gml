// Inherit the parent event
event_inherited();

siner++;

if (Battle_GetState() == BATTLE_STATE.CUTSCENE) {
	if (!instance_exists(battle_dialog_enemy)) {
		var inst;
		switch (dialog_count) {
			case 0:
				inst = instance_create_depth(x + 100, y - 150, 0, battle_dialog_enemy);
				inst.text = "{voice 2}You have no aura.{pause}{end}";
				inst.template = 0;
				break;
			
			case 1:
				with (battle_enemy_minus_dummy) {
					inst = instance_create_depth(x - 70, y - 80, 0, battle_dialog_enemy);
					inst.text = "Let's give you a glow up.{script `Dialog_Event0`}{pause}{end}";
					inst.template = 1;
					sprite_index = spr_enemy_minus_talk;
				}
				break;
			
			case 2:
				inst = instance_create_depth(x + 100, y - 150, 0, battle_dialog_enemy);
				inst.text = "{voice 2}There we go.{pause}{end}";
				inst.template = 0;
				battle_enemy_minus_dummy.sprite_index = spr_enemy_minus_dance;
				break;
			
			case 3:
				with (battle_enemy_minus_dummy) {
					inst = instance_create_depth(x - 70, y - 80, 0, battle_dialog_enemy);
					inst.text = "And now, the beasts have&been unleashed.{pause}{end}";
					inst.template = 1;
					sprite_index = spr_enemy_minus_talk;
				}
				break;
				
			case 4:
				Battle_SetState(BATTLE_STATE.TURN_PREPARATION);
				audio_play_sound(snd_vine_boom, 0, 0);
				
				var _event0 = function() {
					audio_play_sound(snd_oh_my_god, 0, 0);
				}
				Delay_Event(_event0, 40);
				
				battle_enemy_minus_dummy.sprite_index = spr_enemy_minus_dance;
				
				break;
		}
	
		dialog_count++;
	}
}