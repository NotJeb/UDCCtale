// Inherit the parent event
event_inherited();

if (time == 0) {
	Battle_BoardTransform(65, 65, 65, 65);
}
if (time == 10) {
	Battle_CreateJevilBomb(bb.x + 50, bb.y, 0);
}
if (time == 15) {
	Battle_CreateJevilBomb(bb.x - 50, bb.y - 20, 1);
}
if (time == 20) {
	Battle_CreateJevilBomb(bb.x - 70, bb.y - 40, 2);
}
if (time == 25) {
	Battle_CreateJevilBomb(bb.x + 150, bb.y + 40, 3);
}
if (time == 70) {
	var _dogbeam0 = Battle_CreateDogBeam(bb.x, 13, 10, 150);
	_dogbeam0.rotation = 40;
}
if (time == 95) {
	Battle_BoardTransform(65, 65, 110, 110);
}