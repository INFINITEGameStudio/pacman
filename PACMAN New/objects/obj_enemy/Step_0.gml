///@description Choosing Direction

if(!is_moving){
	dir = irandom_range(0,3);
	switch(dir){
		case 0: //right
			is_moving = true;
			move_timer = grid_size;
			hsp = move_speed;
			break;
		
		case 1: //up
			is_moving = true;
			move_timer = grid_size;
			vsp = - move_speed;	
			break;
	
		case 2: //left
			is_moving = true;
			move_timer = grid_size;
			hsp = - move_speed;
			break;
		
		case 3: //down
			is_moving = true;
			move_timer = grid_size;
			vsp = move_speed;	
			break;
		
		default:
			show_debug_message("error in enemy create movement section!");
			break;
	}
}

//Collide and Move
if(is_moving){
	if(move_timer > 0){
		if(place_meeting(x + hsp , y + vsp , obj_wall)){
			event_perform(ev_other , ev_user0);//Reset the Movement
		}
		x += hsp;
		y+= vsp;
		move_timer -= move_speed;
	} else{
		event_perform(ev_other , ev_user0);//Reset the Movement	
	}
}