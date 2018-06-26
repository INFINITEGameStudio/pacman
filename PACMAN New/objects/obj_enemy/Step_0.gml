///@description Choosing Direction

if(!is_moving){
	
	scr_enemy_chase();
	
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