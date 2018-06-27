///@description Choosing Direction
if(!is_moving){
	
	switch(state){
		case e_state.chase:
			dir = scr_enemy_chase();
			stateText = "chase";
			break;
		
		case e_state.scatter:
			dir = scr_enemy_scatter(old_dir , x  , y );
			stateText = "scatter";
			break;
	}
	scr_enemy_direction();
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