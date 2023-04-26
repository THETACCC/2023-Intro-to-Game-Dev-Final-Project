/// @description Insert description here
// You can write your code in this editor
if start_running = true {
	
move_towards_point(obj_cat_position.x,y,4)	
sprite_index = spr_cat_running
 image_xscale = 1	
 image_speed = 1.5
} else if start_running = false
{
sprite_index = spr_cat_idle
 image_alpha -= 0.01
 image_speed = 1
}
if instance_place(x,y,obj_cat_position)
{
		start_running = false	
		speed = 0

}
if image_alpha <= 0 
{

instance_destroy(self)
	
}
