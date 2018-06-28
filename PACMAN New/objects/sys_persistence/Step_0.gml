/// @description Changing Levels
if(!instance_exists(par_collectables)){
	if(room < 2){
		room_goto(room + 1);	
	}
	else
		game_end();
}

