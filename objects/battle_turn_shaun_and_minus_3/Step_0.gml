// Inherit the parent event
event_inherited();

if (time == 0) {
	Battle_BoardTransform(130, 65, 185, 185);
}
if (Battle_Repeat(10, 910, 90)) {
	Battle_CreateBasketcat(bb.x + 235, bb.y - 65, -5, -3, 50, random(360), 94);
}
if (Battle_Repeat(55, 955, 90)) {
	Battle_CreateBasketcat(bb.x - 235, bb.y - 65, 5, -3, 50, random(360), 94);
}
if (Battle_Repeat(10, 910, 90)) {
	Battle_CreateJevilBomb(random_range(100, 540), bb.y - 130, 3);
}
if (Battle_Repeat(40, 940, 60)) {
	Battle_CreateDogBeam(bs.x, random(360), 10, 40);
}
if (Battle_Repeat(960, 1080, 8)) {
	Battle_CreateJevilBomb(choose(bb.x - 235, bb.x + 235), bb.y + random_range(-130, 65), 1);
}