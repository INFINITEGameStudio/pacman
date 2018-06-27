///@description initialize variables

//Movement
dir = irandom_range(0,3);
old_dir = dir;
grid_size = 32;
move_speed = 2;
is_moving = false;
hsp = 0;
vsp = 0;
move_timer = grid_size;

target = obj_player;



state = e_state.chase;
stateText = "chase";