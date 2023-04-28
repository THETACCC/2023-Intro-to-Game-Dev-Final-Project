/// @description Insert description here
// You can write your code in this editor
 if instance_place (x,y, obj_player) && keyboard_check(ord("F")) && !instance_exists(obj_mytextbox) && 	abs(obj_player.m_hvel <= 0.5) && obj_player.m_grounded = true && abs(obj_player.m_vvel <= 0.5) && global.store_interaction = true  {
	check_time --
	if check_time <= 0  {
	scr_inventory_add(obj_inventory,2)
	instance_destroy(self)
	obj_F_1.my_create = false
	create_textbox("abacus_pickup")		
	 check_time = check_timer
	 if !instance_exists(obj_abacus)
	 {
			instance_create_depth(obj_camera.x,obj_camera.y,-999,obj_abacus)
			obj_abacus.appear = true
	 }
	obj_screen_effect_item_pickup.appear = true

	}



} 
if instance_place(x,y,obj_player) && !keyboard_check(ord("F")) && global.store_interaction = true {
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