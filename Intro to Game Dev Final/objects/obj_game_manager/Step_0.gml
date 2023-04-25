/// @description Insert description here
// You can write your code in this editor

switch(global.state)
{
	case Gamestate.Play:
	if instance_exists(obj_mytextbox) {
		obj_player.m_vvel = 0
		obj_player.m_hvel = 0	
		global.state = Gamestate.talking		
		global.player_talking = true
		obj_player.sprite_index = spr_player_idle	

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
	
	break
	
	case Gamestate.in_puzzle:
	obj_player.m_vvel = 0
	obj_player.m_hvel = 0		
	global.player_talking = true	
	
	if keyboard_check_pressed(vk_escape)
	{
	global.player_talking = false		
	global.state = Gamestate.Play
		
	}
	
	
	
	break
	
	case Gamestate.talking:
	
	if !(instance_exists(obj_mytextbox) or !(instance_exists(obj_inventory)) )
	{
	
	global.player_talking = false
	global.state = Gamestate.Play
	}
	
	break	
	
	default:
	// use this to debug	
	
}




