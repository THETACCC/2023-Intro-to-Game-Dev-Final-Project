/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y,obj_title_mouse)
{

	if mouse_check_button_pressed(mb_left)
	{
	obj_room_transition_out_title.start_transition = true	
	instance_destroy(self)	
	}
	
}