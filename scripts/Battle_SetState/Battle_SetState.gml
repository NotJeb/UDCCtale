///@arg state
function Battle_SetState() {
	var STATE=argument[0];

	battle._state=STATE;

	//菜单
	if(STATE==BATTLE_STATE.MENU){
		Battle_SetNextState(BATTLE_STATE.DIALOG);
	
		Battle_SetMenuChoiceEnemy(0,false);
		Battle_SetMenuChoiceAction(0,false);
		Battle_SetMenu(BATTLE_MENU.BUTTON,false);
	
		Battle_CallEnemyEvent(BATTLE_ENEMY_EVENT.MENU_START);
	}

	//对话
	if(STATE==BATTLE_STATE.DIALOG){
		Battle_SetNextState(BATTLE_STATE.TURN_PREPARATION);
	
		Battle_CallEnemyEvent(BATTLE_ENEMY_EVENT.DIALOG_START);
	}

	//回合准备
	if(STATE==BATTLE_STATE.TURN_PREPARATION){
		Battle_SetNextState(BATTLE_STATE.IN_TURN);
	
		Battle_CallEnemyEvent(BATTLE_ENEMY_EVENT.TURN_PREPARATION_START);
	
		if(instance_exists(battle_turn)){
			with(battle_turn){
				event_user(BATTLE_TURN_EVENT.TURN_PREPARATION_START);
			}
		}
	
		Battle_SetTurnTime(Battle_GetTurnInfo(BATTLE_TURN.TIME,0));
	
		battle_soul.x=battle_board.x+Battle_GetTurnInfo(BATTLE_TURN.SOUL_X,0);
		battle_soul.y=battle_board.y+Battle_GetTurnInfo(BATTLE_TURN.SOUL_Y,0);
	}

	//回合内
	if(STATE==BATTLE_STATE.IN_TURN){
		Battle_SetNextState(BATTLE_STATE.BOARD_RESETTING);
		Battle_CallEnemyEvent(BATTLE_ENEMY_EVENT.TURN_START);
	
		if(instance_exists(battle_turn)){
			with(battle_turn){
				event_user(BATTLE_TURN_EVENT.TURN_START);
			}
		}
	}

	//面版重置
	if(STATE==BATTLE_STATE.BOARD_RESETTING){
		Battle_SetNextState(BATTLE_STATE.MENU);
	
		Battle_BoardTransform(BATTLE_BOARD.UP, BATTLE_BOARD.DOWN, BATTLE_BOARD.LEFT, BATTLE_BOARD.RIGHT, BATTLE_BOARD.X, BATTLE_BOARD.Y);
	
		Battle_CallEnemyEvent(BATTLE_ENEMY_EVENT.BOARD_RESETTING_START);
	}

	return true;


}
