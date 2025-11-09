///@desc Dialog Start

// Inherit the parent event
event_inherited();

switch (Battle_GetMenuChoiceButton()) {
	case BATTLE_MENU_CHOICE_BUTTON.ACT:
		switch (Battle_GetMenuChoiceAction()) {
			case 0:
				Dialog_Add("* Dleckon - 270 ATK 340 DEF{sleep 10}&  The strongest monster that has&  ever been in the underground.{pause}{clear}* Holds an unimaginable amount of&  power.");
				break;
		}
		break;
	case BATTLE_MENU_CHOICE_BUTTON.MERCY:
		if (is_spared)
			Dialog_Add("* There's nothing you can do with&  this.");
		else {
			is_spared = true;
			var inst = instance_create_depth(x + 100, y - 150, 0, battle_dialog_enemy);
			inst.text = "If you want to change&everything and not end it&with unnecessary&bloodshed,{sleep 10} you can just&give up on this world.{pause}{clear}There's nothing for you to&see here other than me.";
		}
		break;
}