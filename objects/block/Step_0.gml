if(pushSoulEnabled){
    // Game frozen protector.
    var tryTimes=10000;
    while(place_meeting(x,y,battle_soul)&&tryTimes>0){
        battle_soul.x+=lengthdir_x(0.1,pushSoulDirection+image_angle);
        battle_soul.y+=lengthdir_y(0.1,pushSoulDirection+image_angle);
        tryTimes-=1;
    }
}