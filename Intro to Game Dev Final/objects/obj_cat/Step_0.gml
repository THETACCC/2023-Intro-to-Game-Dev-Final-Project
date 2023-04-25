/// @description Insert description here
// You can write your code in this editor
if start_running = true {
	
move_towards_point(obj_cat_position.x,y,3)	
sprite_index = spr_cat_running
 image_xscale = 1	
 image_speed = 1 
} else if start_running = false
{
	
 sprite_index = spr_cat_idle	
 image_xscale = -1
 image_speed = 1
}