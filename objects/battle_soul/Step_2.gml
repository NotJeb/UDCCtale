// Check if the player is moving
if (array_contains(movement_fights, battle_enemy._enemy_name)) // Check if the fight uses movement based attacks
	player_is_moving = (x != xprevious || y != yprevious);
else // Input based attacks
	player_is_moving = (Input_IsHeld(INPUT.LEFT) || Input_IsHeld(INPUT.RIGHT) || Input_IsHeld(INPUT.UP) || Input_IsHeld(INPUT.DOWN));
	
// Check if the player dies
if (Player_GetHp() <= 0) {
	Battle_Gameover();
}

damage=1;