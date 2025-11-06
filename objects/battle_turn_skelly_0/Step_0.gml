// Inherit the parent event
event_inherited();

if (time == 0) {
	Battle_BoardTransform(65, 65, 65, 65);
}
if (Battle_Repeat(0, 600, 5)) {
	Battle_CreateGB(0, 0, 0, random(640), random(480), random(360), 30, 30);
}