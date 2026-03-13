///@desc Dialog Start

// Inherit the parent event
event_inherited();

// Check Button
switch (Battle_GetMenuChoiceButton()) {
	case BATTLE_MENU_CHOICE_BUTTON.ACT:
	
		// Check Enemy
		switch (Battle_GetMenuChoiceEnemy()) {
			case 0: // Shaun
			
				// Check Action
				switch (Battle_GetMenuChoiceAction()) {
					case 0: // Check
						Dialog_Add("* Shaun - 41 ATK DEF 6767{pause}{clear}* The youtuber who became a&  mighty hero and saved the&  multiverse");
						break;
				
					case 1: // Heal
						Player_Heal(Player_GetHpMax());
						audio_play_sound(snd_item_heal, 0, 0);
						Dialog_Add(Item_GetTextHeal(Player_GetHpMax()));
						break;
				}
				break;
				
			case 1: // Minus
			
				// Check Action
				switch (Battle_GetMenuChoiceAction()) {
					case 0: // Check
						Dialog_Add("* Minus - ATK 67 DEF 4141{pause}{clear}* The jester who sacrificed his&  height for great power and&  destruction");
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