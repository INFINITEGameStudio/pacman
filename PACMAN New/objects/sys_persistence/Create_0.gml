///@description Initialize Variables
//Global variables
globalvar CELL_SIZE; CELL_SIZE = 32;
var hcells = (room_width / CELL_SIZE ) +1;
var vcells = (room_height / CELL_SIZE ) +1;
var offset = -(CELL_SIZE/2);