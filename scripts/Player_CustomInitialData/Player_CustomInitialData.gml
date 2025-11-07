function Player_CustomInitialData(){
	Player_SetLv(1);
	Player_SetHpMax(20);
	Player_SetHp(20);
	Player_SetAtk(10);
	Player_SetDef(10);
	Player_SetSpd(2);
	Player_SetInv(40);
	Player_SetBattleFightMenuObj(battle_menu_fight_knife);
	
	Player_SetItemWeapon(ITEM_STICK);
	Player_SetItemArmor(ITEM_BANDAGE);
}