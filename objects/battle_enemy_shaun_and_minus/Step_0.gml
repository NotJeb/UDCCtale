// Inherit the parent event
event_inherited();

siner++;

if (Battle_GetState() == BATTLE_STATE.CUTSCENE) {
	if (!instance_exists(battle_dialog_enemy)) {
		var _inst;
		switch (dialog_count) {
			case 0:
				_inst = instance_create_depth(x + 100, y - 150, 0, battle_dialog_enemy);
				_inst.text = "{voice 2}You have no aura.{pause}{end}";
				_inst.template = 0;
				break;
			
			case 1:
				with (battle_enemy_minus_dummy) {
					_inst = instance_create_depth(x - 70, y - 80, 0, battle_dialog_enemy);
					_inst.text = "{script `Dialog_Event1` 1}Let's give you a glow up.{script `Dialog_Event0`}{pause}{script `Dialog_Event1` 0}{end}";
					_inst.template = 1;
				}
				break;
			
			case 2:
				_inst = instance_create_depth(x + 100, y - 150, 0, battle_dialog_enemy);
				_inst.text = "{voice 2}There we go.{pause}{end}";
				_inst.template = 0;
				break;
			
			case 3:
				with (battle_enemy_minus_dummy) {
					_inst = instance_create_depth(x - 70, y - 80, 0, battle_dialog_enemy);
					_inst.text = "{script `Dialog_Event1` 1}And now, the beasts have&been unleashed.{pause}{script `Dialog_Event1` 0}{end}";
					_inst.template = 1;
				}
				break;
				
			case 4:
				Battle_SetState(BATTLE_STATE.TURN_PREPARATION);
				audio_play_sound(snd_vine_boom, 0, 0);
				
				var _event0 = function() {
					audio_play_sound(snd_oh_my_god, 0, 0);
				}
				Delay_Event(_event0, 40);
				
				break;
		}
	
		dialog_count++;
	}
}