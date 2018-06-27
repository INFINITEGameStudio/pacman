///scr_eney_chase();
var enemy_path = path_add();
if(mp_grid_path(enemy_grid , enemy_path , x , y , target.x , target.y , false)){
	path_start(enemy_path , move_speed , path_action_stop , false);
		
	var xx = path_get_point_x(enemy_path , 1);
	var yy = path_get_point_y(enemy_path , 1);
		
	if( x < xx){dir = 0;}//right
	else if(x > xx){dir = 2;}//left
	else if(y > yy){dir = 1;}//up
	else if(y < yy){dir = 3;}//down
		
	path_end();
	path_delete(enemy_path);

}

return dir;