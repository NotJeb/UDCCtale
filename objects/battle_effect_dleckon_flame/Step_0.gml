time += 1;
if (time > 100) {
	image_alpha -= 1 / 40;
	radius -= size / 40;
}
if (time == 140)
	instance_destroy();