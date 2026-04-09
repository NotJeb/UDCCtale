// Inherit the parent event
event_inherited();

if time == 10
{
    Battle_CreateBoardCutout(100, 20, 100, 100, battle_board.x + 100, battle_board.y)
}
if time == 100
{
    Battle_BoardTransform(65, 65, 283, 100)
    Battle_Slam(DIR.DOWN)
    //When timer is 100, It will do something.
}
if time == 1000
{
    Battle_EndTurn()
    //When timer is 100, It will do something.
}
if time >= 150 && time <= 400 && time%30==0
{
    //When timer is between 150 and 450, and the timer variable is 30's multiple, it will do something.
}