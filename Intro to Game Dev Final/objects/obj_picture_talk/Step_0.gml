/// @description Insert description here
// You can write your code in this editor


if instance_place (x,y, obj_player) && keyboard_check(ord("F")) && !instance_exists(obj_mytextbox) && 	abs(obj_player.m_hvel <= 0.5) && obj_player.m_grounded = true && abs(obj_player.m_vvel <= 0.5)	 {
	check_time --
	if check_time <= 0  {
		obj_F_1.my_create = false			
		create_textbox(text_id)
		check_time = check_timer
		global.picture_interaction = true
		instance_create_layer(220,50,"puzzle_2",obj_picture)
				if instance_exists(obj_picture)
				{
					
				obj_picture.appear = true
				
				}	
		obj_black_screen_tree.appear = true			
		if !instance_exists(obj_door)
		{
		instance_create_layer(32,240,"Interactions",obj_door)	
		obj_door.target_room = 	rm_1f_passway_after_kitchen
		obj_door.target_x = 1427
		obj_door.target_y= 240		
		}
		obj_kitchen_vines.appear = false 		
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
