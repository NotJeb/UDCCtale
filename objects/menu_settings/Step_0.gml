if (!instance_exists(menu)) instance_destroy();

var _menu_button_prev = _menu_button[_menu];

if (Input_IsPressed(INPUT.UP))
	_menu_button[_menu] = clamp(_menu_button[_menu] - 1, 0, array_length(_menu_screen[_menu].button) - 1);
if (Input_IsPressed(INPUT.DOWN))
	_menu_button[_menu] = clamp(_menu_button[_menu] + 1, 0, array_length(_menu_screen[_menu].button) - 1);

if (_menu_button[_menu] != _menu_button_prev)
	audio_play_sound(snd_menu_switch, 0, 0);

switch (_menu) {
	case (MENU_SCREEN.RETURN):
		Menu_Set();
		break;
		
	case (MENU_SCREEN.MAIN):
		switch (_menu_button[_menu]) {
			case 0:
				if (Input_IsPressed(INPUT.CONFIRM))
					_menu = MENU_SCREEN.SETTINGS;
				break;
				
			case 1:
				if (Input_IsPressed(INPUT.CONFIRM))
					_menu = MENU_SCREEN.MODIFIERS;
				break;
				
			case 2:
				if (Input_IsPressed(INPUT.CONFIRM))
					Menu_Set(menu_credits, menu_settings);
				break;
		}
		break;
		
	case (MENU_SCREEN.SETTINGS):
		switch (_menu_button[_menu]) {
			case 0:
				if (Input_IsPressed(INPUT.LEFT) && world.settings.effects > 0)
					world.settings.effects--;
				else if (Input_IsPressed(INPUT.RIGHT) && world.settings.effects < 2)
					world.settings.effects++;
				break;
				
			case 1:
				if (Input_IsPressed(INPUT.CONFIRM))
					world.settings.fast_reset = !world.settings.fast_reset;
				else if (Input_IsPressed(INPUT.LEFT))
					world.settings.fast_reset = false;
				else if (Input_IsPressed(INPUT.RIGHT))
					world.settings.fast_reset = true;
				break;
				
			case 2:
				if (Input_IsPressed(INPUT.LEFT) && world.settings.sfx_volume > 0)
					world.settings.sfx_volume -= 1 / 100;
				if (menu.input_time[INPUT.LEFT] > 30 && world.settings.sfx_volume > 0)
					world.settings.sfx_volume -= 1 / 100;
					
				if (Input_IsPressed(INPUT.RIGHT) && world.settings.sfx_volume < 1) 
					world.settings.sfx_volume += 1 / 100;
				if (menu.input_time[INPUT.RIGHT] > 30 && world.settings.sfx_volume < 1)
					world.settings.sfx_volume += 1 / 100;
				break;
				
			case 3:
				if (Input_IsPressed(INPUT.LEFT) && world.settings.bgm_volume > 0)
					world.settings.bgm_volume -= 1 / 100;
				if (menu.input_time[INPUT.LEFT] > 30 && world.settings.bgm_volume > 0)
					world.settings.bgm_volume -= 1 / 100;
					
				if (Input_IsPressed(INPUT.RIGHT) && world.settings.bgm_volume < 1) 
					world.settings.bgm_volume += 1 / 100;
				if (menu.input_time[INPUT.RIGHT] > 30 && world.settings.bgm_volume < 1)
					world.settings.bgm_volume += 1 / 100;
				break;
				
			case 4:
				if (Input_IsPressed(INPUT.CONFIRM))
					Menu_Set(menu_name, menu_settings);
				break;
		}
		break;
		
	case (MENU_SCREEN.MODIFIERS):
		switch (_menu_button[_menu]) {
			case 0:
				if (Input_IsPressed(INPUT.CONFIRM))
					world.settings.debug = !world.settings.debug;
				else if (Input_IsPressed(INPUT.LEFT))
					world.settings.debug = false;
				else if (Input_IsPressed(INPUT.RIGHT))
					world.settings.debug = true;
				break;
				
			case 1:
				if (Input_IsPressed(INPUT.CONFIRM))
					world.settings.hitboxes = !world.settings.hitboxes;
				else if (Input_IsPressed(INPUT.LEFT))
					world.settings.hitboxes = false;
				else if (Input_IsPressed(INPUT.RIGHT))
					world.settings.hitboxes = true;
				break;
				
			case 2:
				if (Input_IsPressed(INPUT.LEFT) && world.settings.game_speed > 1)
					world.settings.game_speed -= 1;
				if (menu.input_time[INPUT.LEFT] > 30 && world.settings.game_speed > 1)
					world.settings.game_speed -= 1;
					
				if (Input_IsPressed(INPUT.RIGHT)) 
					world.settings.game_speed += 1;
				if (menu.input_time[INPUT.RIGHT] > 30)
					world.settings.game_speed += 1;
				break;
				
			case 3:
				if (Input_IsPressed(INPUT.CONFIRM))
					world.settings.no_hit = !world.settings.no_hit;
				else if (Input_IsPressed(INPUT.LEFT))
					world.settings.no_hit = false;
				else if (Input_IsPressed(INPUT.RIGHT))
					world.settings.no_hit = true;
				break;
				
			case 4:
				if (Input_IsPressed(INPUT.CONFIRM))
					world.settings.no_heal = !world.settings.no_heal;
				else if (Input_IsPressed(INPUT.LEFT))
					world.settings.no_heal = false;
				else if (Input_IsPressed(INPUT.RIGHT))
					world.settings.no_heal = true;
				break;
		}
		break;
}

if (Input_IsPressed(INPUT.CANCEL)) {
	_menu = _menu_screen[_menu].parent;
}