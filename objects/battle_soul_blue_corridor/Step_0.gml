event_inherited();

if (dir == DIR.DOWN)
    image_angle = 0;
else if (dir == DIR.UP)
    image_angle = 180;
else if (dir == DIR.LEFT)
    image_angle = -90;
else if (dir == DIR.RIGHT)
    image_angle = 90;
	
//移动
if(Battle_GetState()==BATTLE_STATE.IN_TURN && moveable){
	var SPD=Player_GetSpdTotal()
	SPD=(Input_IsHeld(INPUT.CANCEL) ? SPD/2 : SPD);
	repeat(SPD*10){
		if(Input_IsHeld(INPUT.UP)){
			if(!position_meeting(x,y-sprite_height/2,block)){
				y-=0.1;
			}
		}
		if(Input_IsHeld(INPUT.DOWN)){
			if(!position_meeting(x,y+sprite_height/2,block)){
				y+=0.1;
			}
		}
		if(Input_IsHeld(INPUT.LEFT)){
			if(!position_meeting(x-sprite_width/2,y,block)){
				x-=0.1;
			}
		}
		if(Input_IsHeld(INPUT.RIGHT)){
			if(!position_meeting(x+sprite_width/2,y,block)){
				x+=0.1;
			}
		}
	}
	
	var xx = 0;
	var yy = 0;
	var input = -1;
	if (dir == DIR.DOWN)
	    yy = sprite_height / 2 + 0.1;
	else if (dir == DIR.UP)
	    yy = (-sprite_height) / 2 - 0.1;
	else if (dir == DIR.LEFT)
	    xx = (-sprite_height) / 2 - 0.1;
	else if (dir == DIR.RIGHT)
	    xx = sprite_height / 2 + 0.1;
	
	if (impact && (position_meeting((x + xx), (y + yy), block) || position_meeting((x + xx), (y + yy), battle_platform))) {
		if (impact == 2 && Player_GetHp() > 1)
			Player_Hurt(1, 0);
	    impact = 0;
	    audio_play_sound(snd_dong, 0, false);
		Camera_Shake(8, 8, 1, 1, 1, 1);
	}
}