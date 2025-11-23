if (dash_cooldown > 0)
	dash_cooldown--;
else {
	
	// Horizontal input
	if (Input_IsHeld(INPUT.LEFT)) last_input[0] = INPUT.LEFT;
	else if (Input_IsHeld(INPUT.RIGHT)) last_input[0] = INPUT.RIGHT;
	else last_input[0] = -1;

	// Vertical input
	if (Input_IsHeld(INPUT.UP)) last_input[1] = INPUT.UP;
	else if (Input_IsHeld(INPUT.DOWN)) last_input[1] = INPUT.DOWN;
	else last_input[1] = -1;
	
	// Dash input
	if (Input_IsPressed(INPUT.MENU)) {
		dash_direction = last_input;
		dash_cooldown = 20;
		
		dash_speed_total_real = (dash_direction[0] == -1 || dash_direction[1] == -1) ? dash_speed_total : dash_speed_total / sqrt(2);
			
		dash_speed = dash_speed_total_real;
		
		// Apply to soul gravity in blue soul
		if (variable_instance_exists(battle_soul, "dir")) {
			if (battle_soul.dir == DIR.LEFT && dash_direction[0] == INPUT.LEFT) ||
				(battle_soul.dir == DIR.RIGHT && dash_direction[0] == INPUT.RIGHT) ||
				(battle_soul.dir == DIR.UP && dash_direction[1] == INPUT.UP) ||
				(battle_soul.dir == DIR.DOWN && dash_direction[1] == INPUT.DOWN)
				battle_soul.move += dash_speed_total_real;
		}
	}
}

// Move the soul
if (dash_speed > 0) {
	
	// Bounce off the ground in blue soul
	if (variable_instance_exists(battle_soul, "dir")) {
		var _dasher = id;
		with (battle_soul) {
		    var xx = 0;
		    var yy = 0;
		    if (dir == DIR.DOWN)
		        yy = sprite_height / 2 + 0.1;
		    else if (dir == DIR.UP)
		        yy = (-sprite_height) / 2 - 0.1;
		    else if (dir == DIR.LEFT)
		        xx = (-sprite_height) / 2 - 0.1;
		    else if (dir == DIR.RIGHT)
		        xx = sprite_height / 2 + 0.1;
			
			if (position_meeting((x + xx), (y + yy), block) || position_meeting((x + xx), (y + yy), battle_platform))
				_dasher.dash_speed = 0;
		}
	}
	
	if (dash_speed > 0) {
	    repeat (floor(dash_speed) * 10)
	    {
	        if (dash_direction[0] == INPUT.LEFT) {
				with (battle_soul) {
					if (!(position_meeting((x - sprite_width / 2), y, block)))
						x -= 0.1;
				}
			}
	        else if (dash_direction[0] == INPUT.RIGHT) {
				with (battle_soul) {
					if (!(position_meeting((x + sprite_width / 2), y, block)))
						x += 0.1;
				}
			}
	        if (dash_direction[1] == INPUT.UP) {
				with (battle_soul) {
					if (!(position_meeting(x, (y - sprite_height / 2), block)))
						y -= 0.1;
				}
			}
	        else if (dash_direction[1] == INPUT.DOWN) {
				with (battle_soul) {
					if (!(position_meeting(x, (y + sprite_height / 2), block)))
						y += 0.1;
				}
			}
	    }
	
		dash_speed -= dash_speed_total_real / dash_time;
	}
}