///scr_enemy_direction();
//dir = irandom_range(0,3);
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