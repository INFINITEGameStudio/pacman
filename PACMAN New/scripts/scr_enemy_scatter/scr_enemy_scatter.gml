///scr_enemy_scatter(old_dir , x , y);
var dir = argument[0];
var xx = argument[1] div CELL_SIZE;
var yy = argument[2] div CELL_SIZE;
var target = 0;

var right = 0; var up = 1;
var left = 2; var down = 3;

switch(dir){
	case 0 : // moved right
		if(mp_grid_get_cell(enemy_grid , xx + 1 , yy) == 0){target += 1;}
		if(mp_grid_get_cell(enemy_grid , xx , yy - 1)== 0){target += 3;}
		if(mp_grid_get_cell(enemy_grid , xx , yy + 1)== 0){target += 5;}
		
		switch(target){
			case 0: dir = left;break;
			case 1: dir = right;break;
			case 3: dir = up;break;
			case 4: dir = choose(right , up);break;
			case 5: dir = down;break;
			case 6: dir = choose(right , down);break;
			case 8: dir = choose(up , down);break;
			case 9: dir = choose(up , down , right);break;
		}
		break;
		
	case 1 : // moved up
		if(mp_grid_get_cell(enemy_grid , xx , yy - 1)== 0){target += 1;}
		if(mp_grid_get_cell(enemy_grid , xx - 1 , yy)== 0){target += 3;}
		if(mp_grid_get_cell(enemy_grid , xx + 1 , yy)== 0){target += 5;}
		
		switch(target){
			case 0: dir = down;break;
			case 1: dir = up;break;
			case 3: dir = left;break;
			case 4: dir = choose(left , up);break;
			case 5: dir = right;break;
			case 6: dir = choose(right , up);break;
			case 8: dir = choose(right , left);break;
			case 9: dir = choose(up , left , right);break;
		}
		break;
			
	case 2 : // moved left
		if(mp_grid_get_cell(enemy_grid , xx - 1 , yy)== 0){target += 1;}
		if(mp_grid_get_cell(enemy_grid , xx , yy - 1)== 0){target += 3;}
		if(mp_grid_get_cell(enemy_grid , xx , yy + 1)== 0){target += 5;}
		
		switch(target){
			case 0: dir = right;break;
			case 1: dir = left;break;
			case 3: dir = up;break;
			case 4: dir = choose(left , up);break;
			case 5: dir = down;break;
			case 6: dir = choose(down , left);break;
			case 8: dir = choose(up , down);break;
			case 9: dir = choose(up , left , down);break;
		}
		break;
				
	case 3 : // moved down
		if(mp_grid_get_cell(enemy_grid , xx , yy - 1)== 0){target += 1;}
		if(mp_grid_get_cell(enemy_grid , xx -1 , yy )== 0){target += 3;}
		if(mp_grid_get_cell(enemy_grid , xx + 1, yy )== 0){target += 5;}
		
		switch(target){
			case 0: dir = up;break;
			case 1: dir = down;break;
			case 3: dir = left;break;
			case 4: dir = choose(left , down);break;
			case 5: dir = right;break;
			case 6: dir = choose(down , right);break;
			case 8: dir = choose(left , right);break;
			case 9: dir = choose(right , left , down);break;
		}
		break;
}

return dir;