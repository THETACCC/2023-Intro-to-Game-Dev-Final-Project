/// @description Insert description here
// You can write your code in this editor
if instance_place (x,y, obj_player) && keyboard_check(ord("F")) && !instance_exists(obj_mytextbox) && 	abs(obj_player.m_hvel <= 0.5) && obj_player.m_grounded = true && abs(obj_player.m_vvel <= 0.5)	 {
	check_time --
	if check_time <= 0  {
		obj_F.my_create = false			
		create_textbox("bedroom_think")
		check_time = check_timer
		obj_player.allow_inventory = false
		instance_destroy(self)
		obj_backpack.appear = true
		audio_play_sound(snd_close_inventory,1,false)
		
	}



} 
if instance_place(x,y,obj_player) && !keyboard_check(ord("F")) && !instance_exists(obj_mytextbox) {
	check_time = check_timer
	if (!instance_exists(obj_F))
	{
		
	instance_create_layer(obj_player.x,obj_player.y-70, "UI",obj_F)
	obj_F.my_create = true
	}
}	else if !instance_place(x,y,obj_player)
{
	if (instance_exists(obj_F))
	{
		
	obj_F.my_create = false
	}
	
	
}