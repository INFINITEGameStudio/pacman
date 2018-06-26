///scr_enemy_scatter(old_dir , x , y);
var dir = argument[0];
var xx = argument[1] div CELL_SIZE;
var yy = argument[2] div CELL_SIZE;
var target = 0;

var right = 0; var up = 1;
var left = 2; var down = 3;

switch (dir) {
    case 0: //going right
        if(mp_grid_get_cell(enemy_grid , xx , yy + 1)){target += 1;}
		if(mp_grid_get_cell(enemy_grid , xx + 1 , yy)){target += 3;}
		if(mp_grid_get_cell(enemy_grid , xx , yy - 1)){target += 5;}
		
		switch (target) {
		    case 0: dir = left; break;
		    case 1: dir = down; break; 
			case 3: dir = right; break;   
			case 4: dir = choose(right , down); break;   
			case 5: dir = up; break;   
			case 6: dir = choose(down , up); break;   
			case 8: dir = choose(right , up); break;   
			case 9: dir = choose(right ,up , down); break;  
			
		}
		
        break;
		
		case 1: //going up
        if(mp_grid_get_cell(enemy_grid , xx -1 , yy )){target += 1;}
		if(mp_grid_get_cell(enemy_grid , xx  , yy + 1)){target += 3;}
		if(mp_grid_get_cell(enemy_grid , xx + 1 , yy )){target += 5;}
		
		switch (target) {
		    case 0: dir = down; break;
		    case 1: dir = left; break; 
			case 3: dir = up; break;   
			case 4: dir = choose(left , up); break;   
			case 5: dir = right; break;   
			case 6: dir = choose(left , right); break;   
			case 8: dir = choose(left , up); break;   
			case 9: dir = choose(right ,up , down); break;  //?
			
		}
		
        break;
		
	case 2: //going left
        if(mp_grid_get_cell(enemy_grid , xx , yy - 1)){target += 1;}
		if(mp_grid_get_cell(enemy_grid , xx - 1 , yy)){target += 3;}
		if(mp_grid_get_cell(enemy_grid , xx , yy + 1)){target += 5;}
		
		switch (target) {
		    case 0: dir = right; break;
		    case 1: dir = up; break; 
			case 3: dir = left; break;   
			case 4: dir = choose(up , left); break;   
			case 5: dir = down; break;   
			case 6: dir = choose(up , down); break;   
			case 8: dir = choose(right , down); break;   
			case 9: dir = choose(left ,up , down); break;  
			
		}
		
		case 3: //going down
        if(mp_grid_get_cell(enemy_grid , xx + 1 , yy)){target += 1;}
		if(mp_grid_get_cell(enemy_grid , xx , yy - 1)){target += 3;}
		if(mp_grid_get_cell(enemy_grid , xx - 1 , yy)){target += 5;}
		
		switch (target) {
		    case 0: dir = up; break;
		    case 1: dir = right; break; 
			case 3: dir = down; break;   
			case 4: dir = choose(right , down); break;   
			case 5: dir = left; break;   
			case 6: dir = choose(right , left); break;   
			case 8: dir = choose(left , down); break;   
			case 9: dir = choose(right ,left , down); break;  
			
		}
}

return dir;