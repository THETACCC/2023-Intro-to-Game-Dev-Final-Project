/// @description Insert description here
// You can write your code in this editor
switch(state)
{	
	case "idle":
	
	
	break
	
	case "chase":
	sprite_index = spr_guard_walk
	if not instance_exists(obj_player) break;
	
	image_xscale = sign(obj_player.x - x) * -1
	if image_xscale == 0
	{
	
		image_xscale = -1
		
	}
	
	location = sign(obj_player.x - x)
	
	var distance_to_player = point_distance(x,y,obj_player.x,obj_player.y)
	if distance_to_player < 64 
	{
		state = "attack"		
	image_index = 0
		
	}
	else 
	{
		

		move_and_collide(location * 2 , 0,obj_player)	
		
	}
	
	break
	
	case "attack":

	sprite_index = spr_guard_attack

	break
	
	
}


