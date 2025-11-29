///@desc Dialog Start

// Inherit the parent event
event_inherited();

switch (Battle_GetMenuChoiceButton()) {
	case BATTLE_MENU_CHOICE_BUTTON.ACT:
		switch (Battle_GetMenuChoiceAction()) {
			case 0:
				Dialog_Add("* Candle noises");
				break;
				
			case 1:
				Player_Heal(Player_GetHpMax());
				audio_play_sound(snd_item_heal, 0, 0);
				Dialog_Add(Item_GetTextHeal(Player_GetHpMax()));
				break;
		}
		break;
}