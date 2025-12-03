// Inherit the parent event
event_inherited();

if (instance_exists(platform) && platform.sticky)
    x += (platform.x - platform.xprevious);

platform = noone;