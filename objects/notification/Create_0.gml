text = "";

x = 640;
y = 10 + array_get_index(global.notifications, id) * 60;
depth = DEPTH_UI.NOTIFICATION;
image_speed = 0;

Anim_Create(id, "x", ANIM_TWEEN.SINE, ANIM_EASE.OUT, 640, -200, 30);
Anim_Create(id, "x", ANIM_TWEEN.SINE, ANIM_EASE.IN, 440, 200, 30, 150);

alarm[0] = 180;