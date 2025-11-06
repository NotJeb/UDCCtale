mode = 2;
direction = image_angle - 90;
gb_beam = instance_create_depth(x, y, depth, battle_bullet_gb_beam_skelly);
gb_beam.image_yscale = image_yscale;
gb_beam.image_angle = image_angle;
Anim_Create(gb_beam, "image_xscale", 0, 0, 0, image_xscale * 1.2, 8);
Anim_Create(gb_beam, "image_xscale", 0, 0, image_xscale * 1.2, image_xscale * 0.2, floor(shoot_time / 2), 8);
Anim_Create(gb_beam, "image_xscale", 0, 0, image_xscale * 1.4, image_xscale * -0.4, floor(shoot_time / 2) - 10, 8 + floor(shoot_time / 2));
audio_play_sound(snd_gb_release, 0, 0);