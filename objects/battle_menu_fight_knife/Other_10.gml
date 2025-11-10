///@desc Anim
if(Battle_GetMenuFightDamage()>=0){
	var ENEMY=Battle_ConvertMenuChoiceEnemyToEnemySlot(Battle_GetMenuChoiceEnemy());
	var X=Battle_GetEnemyCenterPosX(ENEMY);
	var Y=Battle_GetEnemyCenterPosY(ENEMY);
	instance_create_depth(X,Y,0,battle_menu_fight_anim_knife);
	
	if (battle_enemy._enemy_name == ENEMY_NAME_DLECKON) {
		var _event_cutscene_0 = function() {
			Anim_Create(battle_enemy, "x", 0, 0, battle_enemy.x, 5, 2);
			Anim_Create(battle_enemy, "x", 0, 0, battle_enemy.x + 5, -9, 2, 2);
			Anim_Create(battle_enemy, "x", 0, 0, battle_enemy.x - 4, 7, 2, 4);
			Anim_Create(battle_enemy, "x", 0, 0, battle_enemy.x + 3, -5, 2, 6);
			Anim_Create(battle_enemy, "x", 0, 0, battle_enemy.x - 2, 3, 2, 8);
			Anim_Create(battle_enemy, "x", 0, 0, battle_enemy.x + 1, -1, 2, 10);
			battle_enemy.body = 1;
		}
		Delay_Event(_event_cutscene_0, 45, [], battle_enemy);
		
		var _event_cutscene_1 = function() {
			battle_enemy.body = 0;
		}
		Delay_Event(_event_cutscene_1, 90, [], battle_enemy);
	}
}