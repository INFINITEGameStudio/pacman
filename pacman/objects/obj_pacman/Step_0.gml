/// @description 

elapsedTime += delta_time;
if(elapsedTime > timeStep )
{
	elapsedTime = 0;
	#region Movement
		key_left = keyboard_check(vk_left);
		key_right = keyboard_check(vk_right);
		key_up = keyboard_check(vk_up);
		key_down = keyboard_check(vk_down);
	
		moveH = key_right - key_left;
		moveV = key_down - key_up;
	
		hsp = moveH * walksp;
		vsp = moveV * walksp;
	
		if(place_meeting(x + ( step * sign(hsp)) , y , obj_wall ))
		{
			hsp = 0;
		}
		x = x + ( step * sign(hsp));
	 
		if(place_meeting(x  , y + ( step * sign(vsp)) , obj_wall ))
		{
			vsp = 0;
		}
		y = y + ( step * sign(vsp));
	
	#endregion
	
}

#region God Mode
	if(global.godMode)
	{
		global.elapsedGodMode += delta_time;
		if(global.elapsedGodMode > global.godModeTime)
		{
			sprite_index = spr_pacman_transferToNormal;
			
			if(global.elapsedGodMode > global.godModeTime + godModeTransferTime)
			{
				global.elapsedGodMode = 0;
				global.godMode = false;
				sprite_index = spr_pacman_normal;
			}
		}
		else
		{
			sprite_index = spr_pacman_godMode;
		}
	}
	#endregion