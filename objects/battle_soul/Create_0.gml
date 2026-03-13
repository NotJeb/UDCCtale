depth=DEPTH_BATTLE.SOUL;
image_speed=0;

follow_board=false;
_inv=0;
alpha=0;

movement_fights = [ENEMY_NAME_KACPII, ENEMY_NAME_SHAUN_AND_MINUS];

// Check if the player is moving
if (instance_exists(battle_enemy) && array_contains(movement_fights, battle_enemy._enemy_name)) // Check if the fight uses movement based attacks
	player_is_moving = x != xprevious || y != yprevious;
else // Input based attacks
	player_is_moving = (Input_IsHeld(INPUT.LEFT) || Input_IsHeld(INPUT.RIGHT) || Input_IsHeld(INPUT.UP) || Input_IsHeld(INPUT.DOWN));