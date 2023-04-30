/// @description Insert description here
// You can write your code in this editor
switch(state)
{	
	case "idle":
	
	sprite_index = spr_cat_idle
	speed = 0
	
	break
	
	case "chase":
	sprite_index = spr_cat_running
	if not instance_exists(obj_patrol_point_cat) {break}
	
	image_xscale = sign(obj_patrol_point_cat.x - x) 
	if image_xscale == 0
	{
	
		image_xscale = -1
		
	}
	
	location = sign(obj_patrol_point_cat.x - x)
	
	var distance_to_patrol = point_distance(x,y,obj_patrol_point_cat.x,obj_patrol_point_cat.y)
	if distance_to_patrol < 100 
	{
		if instance_exists(obj_mytextbox)
		{
		instance_destroy(obj_mytextbox)
		create_textbox("player_move")	
		}else
		{
			
		create_textbox("player_move")			
		}		
		
		state = "idle"		
	image_index = 0
		
	}
	else 
	{
		

		move_and_collide(location * 2 , 0,obj_patrol_point_cat)	
		
	}
	
	break
	
	case "chase-2":
	sprite_index = spr_cat_running
	if not instance_exists(obj_patrol_point_cat2) {break}
	
	image_xscale = sign(obj_patrol_point_cat2.x - x) 
	if image_xscale == 0
	{
	
		image_xscale = -1
		
	}
	
	location = sign(obj_patrol_point_cat2.x - x)
	
	var distance_to_patrol = point_distance(x,y,obj_patrol_point_cat2.x,obj_patrol_point_cat2.y)
	if distance_to_patrol < 100 
	{
		state = "idle"		
	image_index = 0
		
	}
	else 
	{
		

		move_and_collide(location * 2 , 0,obj_patrol_point_cat2)	
		
	}
	
	break
	
	case "finish":	
	
	break	
}


