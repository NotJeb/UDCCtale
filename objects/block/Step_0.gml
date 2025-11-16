if(pushSoulEnabled){
    // Game frozen protector.
    var tryTimes=10000;
    while(collision_rectangle(battle_soul.x - battle_soul.sprite_width / 2, battle_soul.y - battle_soul.sprite_height / 2, battle_soul.x + battle_soul.sprite_width / 2, battle_soul.y + battle_soul.sprite_height / 2, id, false, false)&&tryTimes>0){
        battle_soul.x+=lengthdir_x(0.1,pushSoulDirection+image_angle);
        battle_soul.y+=lengthdir_y(0.1,pushSoulDirection+image_angle);
        tryTimes-=1;
    }
}