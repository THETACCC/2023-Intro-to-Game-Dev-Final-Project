/// @description Insert description here
// You can write your code in this editor
 if instance_place (x,y, obj_player) && keyboard_check(ord("F")) && !instance_exists(obj_mytextbox) && 	abs(obj_player.m_hvel <= 0.5) && obj_player.m_grounded = true && abs(obj_player.m_vvel <= 0.5) {
	check_time --
	if check_time <= 0  {
	audio_play_sound(snd_pickup,1,false)
	instance_destroy(self)
	obj_F_1.my_create = false
	create_textbox("textile_pickup")		
	 check_time = check_timer
	 if !instance_exists(obJ_white_textile_big)
	 {
			instance_create_depth(obj_camera.x,obj_camera.y,-999,obJ_white_textile_big)
			obJ_white_textile_big.appear = true
	 }
	obj_screen_effect_item_pickup.appear = true

	}



} 
if instance_place(x,y,obj_player) && !keyboard_check(ord("F"))  {
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