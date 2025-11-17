///@desc Trigger
event_inherited();

if(room_exists(target_room)){
	fader.color=fade_in_color;
	Fader_Fade(-1,1,fade_in_time);
	if(instance_exists(char_player)){
		char_player._moveable_warp=false;
	}
	alarm[0]=fade_in_time+warp_wait+1;
}else{
	show_debug_message("Attempt to warp to non-existing room "+string(target_room)+"!");
}