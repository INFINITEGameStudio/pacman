///@description Move the Player
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_up = keyboard_check(vk_up);
key_down = keyboard_check(vk_down);

if(!is_moving){
	if(key_left){
		is_moving = true;// to do not check the other keys while moving
		move_timer = grid_size;
		hsp = - move_speed;//go to left
		vsp = 0; 
	} else if (key_right){
		is_moving = true;
		move_timer = grid_size;
		hsp = move_speed;
		vsp = 0;			
	} else if (key_up){
		is_moving = true;
		move_timer = grid_size;
		hsp = 0;
		vsp = - move_speed;			
	} else if (key_down){
		is_moving = true;
		move_timer = grid_size;
		hsp = 0;
		vsp = move_speed;			
	}
} else { // Collision Detection and Movement
	if(	move_timer > 0 ){
		if(place_meeting(x + hsp , y , obj_wall)){  // check horizontal
			hsp = 0; move_timer = 0;	
		}
		x += hsp;
		
		if(place_meeting(x , y + vsp , obj_wall)){  //check verticel
			vsp = 0; move_timer = 0;
		}
		y += vsp;
		
		move_timer -= move_speed;
				
	} else{ 
		is_moving = false;
	}
}

//Check Collision with Collectables
if(place_meeting(x , y , par_collectables)){
	var coll = 	instance_nearest(x , y , par_collectables);
	
	points += coll.points;//score
	
	with(coll){instance_destroy();}
}

//check collision with enemy
//if(place_meeting(x , y , obj_enemy)){
//	instance_destroy(self);	
//}


