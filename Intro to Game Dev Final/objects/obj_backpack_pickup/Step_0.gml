/// @description Insert description here
// You can write your code in this editor
clamp(image_alpha,-0.1,1)
if appear = true and image_alpha <= 1 {
	
image_alpha += 0.05	
	
} 
 if instance_place (x,y, obj_player) && keyboard_check(ord("F")) && !instance_exists(obj_mytextbox) && 	abs(obj_player.m_hvel <= 0.5) and appear = true {
	check_time --
	if check_time <= 0  {
	obj_door.target_room = rm_1f_passway_night
	obj_player.allow_inventory = true	
	audio_play_sound(snd_pickup,1,false)
	instance_destroy(self)
	}



} 
if instance_place(x,y,obj_player) && !keyboard_check(ord("F")) and appear = true  {
	check_time = check_timer

	if (!instance_exists(obj_F_1))
	{

		show_debug_message("COLLLIDE")	
	instance_create_layer(obj_player.x,obj_player.y-70, "UI",obj_F_1)
	obj_F_1.my_create = true
	}
}	else if !instance_place(x,y,obj_player)
{
	if (instance_exists(obj_F_1))
	{
		
	obj_F_1.my_create = false
	}
	
	
}	