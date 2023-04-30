/// @description Insert description here
// You can write your code in this editor
if instance_place(x,y,obj_player) 
{
	if keyboard_check_pressed(ord("W"))
	{
		
	instance_create_layer(0,0, "scroll",obj_white_ghost)
	audio_play_sound(snd_white_ghost,1,false)
	
	}
}