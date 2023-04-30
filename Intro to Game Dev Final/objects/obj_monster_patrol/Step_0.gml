/// @description Insert description here
// You can write your code in this editor
switch(state)
{	
	case "idle":
	
	sprite_index = spr_guard_idle
	speed = 0
	global.player_talking = true	
	break
	
	case "chase":
	sprite_index = spr_guard_walk
	if not instance_exists(obj_patrol_point) {break}
	
	image_xscale = sign(obj_patrol_point.x - x) * -1
	if image_xscale == 0
	{
	
		image_xscale = -1
		
	}
	
	location = sign(obj_patrol_point.x - x)
	global.player_talking = true
	var distance_to_patrol = point_distance(x,y,obj_patrol_point.x,obj_patrol_point.y)
	if distance_to_patrol < 100 
	{
		if instance_exists(obj_mytextbox)
		{
		instance_destroy(obj_mytextbox)
		create_textbox("player_hide")	
		}else
		{
			
		create_textbox("player_hide")			
		}
		state = "idle"		
	image_index = 0
		
	}
	else 
	{
		

		move_and_collide(location * 1.4 , 0,obj_patrol_point)	
		
	}
	
	break
	
	case "patrol-2":
	sprite_index = spr_guard_walk
	if not instance_exists(obj_patrol_point_2) {break}
	
	image_xscale = sign(obj_patrol_point_2.x - x) * -1
	if image_xscale == 0
	{
	
		image_xscale = -1
		
	}
	
	location = sign(obj_patrol_point_2.x - x)
	
	var distance_to_patrol = point_distance(x,y,obj_patrol_point_2.x,obj_patrol_point_2.y)
	if distance_to_patrol < 100 
	{
		state = "finish"		
	image_index = 0
		
	}
	else 
	{
		

		move_and_collide(location * 1.4 , 0,obj_patrol_point_2)	
		
	}

	break
	
	case "finish":	
	
	break	
	
	case "flip":	
	sprite_index = spr_guard_idle
	speed = 0	
	image_xscale = 1	
	
	break		
}


