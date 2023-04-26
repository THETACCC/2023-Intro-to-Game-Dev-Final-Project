/// @description Insert description here
// You can write your code in this editor


if instance_place (x,y, obj_player) && keyboard_check(ord("F")) && !instance_exists(obj_mytextbox) && 	abs(obj_player.m_hvel <= 0.5) && obj_player.m_grounded = true && abs(obj_player.m_vvel <= 0.5)	 {
	check_time --
	if check_time <= 0  {
		obj_F_1.my_create = false			
		create_textbox(text_id)
		check_time = check_timer
		global.picture_interaction = true
		instance_destroy(self)
	}



} 
if instance_place(x,y,obj_player) && !keyboard_check(ord("F")) && !instance_exists(obj_mytextbox) {
	check_time = check_timer
	if (!instance_exists(obj_F_1))
	{
		
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
