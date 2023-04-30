/// @description Insert description here
// You can write your code in this editor

switch(global.state)
{
	case Gamestate.Play:
	if instance_exists(obj_mytextbox) {
		if instance_exists(obj_An_Zhou) and room = rm_main
		{
		obj_player.m_vvel = 0
		obj_player.m_hvel = 0	
		global.state = Gamestate.scene	
		global.player_talking = true
		obj_player.sprite_index = spr_player_idle					
		global.player_inventory = false 	
			
		}else{
		obj_player.m_vvel = 0
		obj_player.m_hvel = 0	
		global.state = Gamestate.talking		
		global.player_talking = true
		obj_player.sprite_index = spr_player_idle		
		global.player_inventory = false 			
			
			
		}


	} 
	if room = rm_main and global.store_interaction = false {
	instance_create_layer( 960,256 , "interactions",obj_store_talk)	

	}
	if room = rm_start and global.start_interaction = false {
	instance_create_layer( 512,256 , "interactions",obj_startgame_talk)	

	}
	if room = rm_main and global.cat_interaction_1 = false {
	instance_create_layer( 380,256 , "interactions",obj_cat_initial)	

	}
	if room = rm_yuanzi and global.garden_interaction_1 = false {
	instance_create_layer( 90,256 , "interactions",obj_garden_An_Zhou)	

	}
	if room = rm_kitchen and global.kitchen_interaction = false {
	instance_create_layer( 32,256 , "interactions",obj_kitchen_initial)	

	}
	
	if room = rm_yuanzi_after_kitchen and global.cheif_initial = false{
	instance_create_layer( 640,256 , "interactions",obj_chief_initial)	

	}	
	
	if room = rm_title 
	{
	global.state = Gamestate.title			
	}
	break
	
	case Gamestate.in_puzzle:
	obj_player.m_vvel = 0
	obj_player.m_hvel = 0		
	global.player_talking = true	
	if instance_exists(obj_F_talking)
	{
	instance_destroy(obj_F_talking)
	}	
	if keyboard_check_pressed(vk_escape)
	{
	global.player_talking = false		
	global.state = Gamestate.Play
		
	}
	
	
	
	break
	
	case Gamestate.talking:
	
	if !(instance_exists(obj_mytextbox) or !(instance_exists(obj_inventory)) )
	{
	if instance_exists(obj_F_talking)
	{
	instance_destroy(obj_F_talking)
	}
	global.player_talking = false
	global.state = Gamestate.Play
	}
	
	break
	
	case Gamestate.scene:	
	if room = rm_yuanzi 
	{
	if instance_exists(obj_F_talking)
	{
	instance_destroy(obj_F_talking)
	}	
	global.player_talking = false
	global.state = Gamestate.Play
	}	
	
	break	
	
	case Gamestate.title:	
	if room != rm_title
	{
	global.state = Gamestate.Play		
		
	}
	global.player_talking = true	
	
	break	
	
	case Gamestate.mask_puzzle:
	obj_player.m_vvel = 0
	obj_player.m_hvel = 0		
	global.player_talking = true	
	if instance_exists(obj_F_talking)
	{
	instance_destroy(obj_F_talking)
	}	
	if keyboard_check_pressed(vk_escape)
	{
	global.player_talking = false	
	
	global.state = Gamestate.Play
		
	}	
	break
	
	
	default:
	// use this to debug	
	
}




