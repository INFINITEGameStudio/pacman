///@description Initialize Variables
//Global variables
global.godmode = false;
globalvar CELL_SIZE; CELL_SIZE = 32;
var hcells = (room_width / CELL_SIZE ) +1;
var vcells = (room_height / CELL_SIZE ) +1;
var offset = -(CELL_SIZE/2);

globalvar enemy_grid;
enemy_grid = mp_grid_create(offset , offset , hcells , vcells , CELL_SIZE , CELL_SIZE);
mp_grid_add_instances(enemy_grid , obj_wall , false);

//state machine
enum e_state {
	chase ,
	scatter
}


audio_play_sound(music_game , 0 , 1);
