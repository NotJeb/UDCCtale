///@desc Dialog Start

// Inherit the parent event
event_inherited();

// Check Button
switch (Battle_GetMenuChoiceButton()) {
	case BATTLE_MENU_CHOICE_BUTTON.ACT:
	
		// Check Enemy
		switch (Battle_GetMenuChoiceEnemy()) {
			case 0: // Moss
			
				// Check Action
				switch (Battle_GetMenuChoiceAction()) {
					case 0: // Check
						Dialog_Add("* Moss noises");
						break;
				
					case 1: // Heal
						Player_Heal(Player_GetHpMax());
						audio_play_sound(snd_item_heal, 0, 0);
						Dialog_Add(Item_GetTextHeal(Player_GetHpMax()));
						break;
				}
				break;
				
			case 1: // Candle
			
				// Check Action
				switch (Battle_GetMenuChoiceAction()) {
					case 0: // Check
						Dialog_Add("* Candle noises");
						break;
				
					case 1: // Heal
						Player_Heal(Player_GetHpMax());
						audio_play_sound(snd_item_heal, 0, 0);
						Dialog_Add(Item_GetTextHeal(Player_GetHpMax()));
						break;
				}
				break;
		}
		break;
}