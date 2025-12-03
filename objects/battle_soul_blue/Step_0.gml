event_inherited();

if (dir == DIR.DOWN)
    image_angle = 0;
else if (dir == DIR.UP)
    image_angle = 180;
else if (dir == DIR.LEFT)
    image_angle = -90;
else if (dir == DIR.RIGHT)
    image_angle = 90;

if (Battle_GetState() == BATTLE_STATE.IN_TURN && moveable)
{
    repeat (Input_IsHeld(INPUT.CANCEL) ? Player_GetSpdTotal() * 5 : Player_GetSpdTotal() * 10)
    {
        if (dir == DIR.UP || dir == DIR.DOWN) {
            if (Input_IsHeld(INPUT.LEFT) && !(position_meeting((x - sprite_width / 2), y, block)))
				x -= 0.1;
            if (Input_IsHeld(INPUT.RIGHT) && !(position_meeting((x + sprite_width / 2), y, block)))
				x += 0.1;
        }
        else if (dir == DIR.LEFT || dir == DIR.RIGHT) {
            if (Input_IsHeld(INPUT.UP) && !(position_meeting(x, (y - sprite_height / 2), block)))
				y -= 0.1;
            if (Input_IsHeld(INPUT.DOWN) && !(position_meeting(x, (y + sprite_height / 2), block)))
                y += 0.1;
        }
    }
	
    var xx = 0;
    var yy = 0;
    var input = -1
    if (dir == DIR.DOWN) {
        input = INPUT.UP;
        yy = sprite_height / 2 + 0.1;
	}
    else if (dir == DIR.UP) {
        input = INPUT.DOWN;
        yy = (-sprite_height) / 2 - 0.1;
	}
    else if (dir == DIR.LEFT) {
        input = INPUT.RIGHT;
        xx = (-sprite_height) / 2 - 0.1;
	}
    else if (dir == DIR.RIGHT) {
        input = INPUT.LEFT;
        xx = sprite_height / 2 + 0.1;
	}
	
    if ((position_meeting((x + xx), (y + yy), block) || position_meeting((x + xx), (y + yy), battle_platform)) && move >= 0) {
        var fx = 0;
        var fy = 0;
        if (dir == DIR.DOWN)
            fy = sprite_height / 2;
        else if (dir == DIR.UP)
            fy = (-sprite_height) / 2;
        else if (dir == DIR.LEFT)
            fx = (-sprite_height) / 2;
        else if (dir == DIR.RIGHT)
            fx = sprite_height / 2;
			
        while (position_meeting((x + fx), (y + fy), block) || position_meeting((x + fx), (y + fy), battle_platform)) {
			if (position_meeting((x - fx), (y - fy), block) && position_meeting((x + fx), (y + fy), battle_platform))
				break;
            if (dir == DIR.DOWN)
                y -= 0.1;
            else if (dir == DIR.UP)
                y += 0.1;
            else if (dir == DIR.LEFT)
                x += 0.1;
            else if (dir == DIR.RIGHT)
                x -= 0.1;
        }
		
        if (position_meeting((x + xx), (y + yy), block) || position_meeting((x + xx), (y + yy), battle_platform)) {
            move = 0;
			
            if (impact) {
				if (impact == 2 && Player_GetHp() > 1)
					Player_Hurt(1, 0);
                impact = 0;
                audio_play_sound(snd_dong, 0, false);
				Camera_Shake(8, 8, 1, 1, 1, 1);
            }
			
            if (position_meeting((x + xx), (y + yy), battle_platform)) {
                var cx = 0;
                var cy = 0;
                if (dir == DIR.DOWN)
                    cy = sprite_height / 2 + 1;
                else if (dir == DIR.UP)
                    cy = (-sprite_height) / 2 - 1;
                else if (dir == DIR.LEFT)
                    cx = (-sprite_height) / 2 - 1;
                else if (dir == DIR.RIGHT)
                    cx = sprite_height / 2 + 1;
				platform = instance_position((x + cx), (y + cy), battle_platform);
            }
			
            if (Input_IsHeld(input))
                move = -_speed_jump;
        }
    }
    else if (move < 0) {
        move += _gravity_jump;
        if (!Input_IsHeld(input) || move > 0)
            move = 0;
    }
    else if (move < 0.05)
        move += 0.01;
    else if (move < _gravity_fall_max)
        move += _gravity_fall;
		
    repeat (abs(move) * 10) {
        xx = 0;
        yy = 0;
        if (dir == DIR.DOWN)
            yy = sprite_height / 2 * sign(move);
        else if (dir == DIR.UP)
            yy = (-((sprite_height / 2))) * sign(move);
        else if (dir == DIR.LEFT)
            xx = (-((sprite_width / 2))) * sign(move);
        else if (dir == DIR.RIGHT)
            xx = sprite_width / 2 * sign(move);
			
        if (position_meeting((x + xx), (y + yy), block))
			move = 0;
        else if (!(move > 0 && position_meeting((x + xx), (y + yy), battle_platform))) {
            xx = 0;
            yy = 0;
            if (dir == DIR.DOWN)
                yy = 0.1 * sign(move);
            else if (dir == DIR.UP)
                yy = -0.1 * sign(move);
            else if (dir == DIR.LEFT)
                xx = -0.1 * sign(move);
            else if (dir == DIR.RIGHT)
                xx = 0.1 * sign(move);
            x += xx;
            y += yy;
		}
    }
	
    xx = 0;
    yy = 0;
    if (dir == DIR.DOWN)
        yy = -0.1 * sign(move);
    else if (dir == DIR.UP)
        yy = 0.1 * sign(move);
    else if (dir == DIR.LEFT)
        xx = 0.1 * sign(move);
    else if (dir == DIR.RIGHT)
        xx = -0.1 * sign(move);
	
    if place_meeting((x + xx), (y + yy), block)
        move = 0;
}
