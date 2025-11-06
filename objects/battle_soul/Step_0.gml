var STATE=Battle_GetState();
if(STATE==BATTLE_STATE.TURN_PREPARATION||STATE==BATTLE_STATE.IN_TURN){
	if(follow_board){
		x+=battle_board.x-battle_board.xprevious;
		y+=battle_board.y-battle_board.yprevious;
	}
}

//无敌时间闪烁
if(_inv>0){
	_inv-=1;
	if(image_speed==0){
		image_speed=1/2;
		image_index=1;
	}
}else{
	if(image_speed!=0){
		image_speed=0;
		image_index=0;
	}
}

// Check if the player is moving
player_is_moving = (Input_IsHeld(INPUT.LEFT) || Input_IsHeld(INPUT.RIGHT) || Input_IsHeld(INPUT.UP) || Input_IsHeld(INPUT.DOWN));