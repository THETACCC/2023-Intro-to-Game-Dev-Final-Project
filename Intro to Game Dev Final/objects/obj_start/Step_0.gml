/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y,obj_title_mouse)
{
	image_xscale = lerp(image_xscale,1.1,0.06)
	image_yscale = lerp(image_yscale,1.1,0.06)	
	
	if mouse_check_button_pressed(mb_left)
	{
	game_start = true
	obj_room_transition_out_title.start_transition = true		
	}
	
} else {
	
	image_xscale = lerp(image_xscale,1,0.06)
	image_yscale = lerp(image_yscale,1,0.06)		

}
if game_start = true {
image_alpha -= 0.05	
	
} 
if image_alpha <= 0 
{

instance_destroy(self)
	
}
