///@description change enemy state to scatter
if(instance_exists(obj_enemy)){
	with(obj_enemy){
		state = e_state.scatter;
		alarm[0] = room_speed * 4;
	}
}
