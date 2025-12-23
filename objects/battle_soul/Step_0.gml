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

if (x < 0 - sprite_width / 2 || x > 640 + sprite_width / 2 || y < 0 - sprite_height / 2 || y > 480 + sprite_height / 2) {
	show_debug_message($"ERROR: battle_soul has left screen area at ({x}, {y})");
	x = battle_board.x;
	y = battle_board.y;
}