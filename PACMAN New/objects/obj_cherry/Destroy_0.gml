///@description change enemy state to scatter
audio_play_sound(snd_eat_fruit , 1 , 0);
if(instance_exists(obj_enemy)){
	with(obj_enemy){
		state = e_state.scatter;
		alarm[0] = room_speed * 4;
	}
}
