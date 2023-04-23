/// @description Insert description here
// You can write your code in this editor

switch(global.state)
{
	case Gamestate.Play:
	if instance_exists(obj_mytextbox) {
			obj_player.m_vvel = 0
		obj_player.m_hvel = 0	
		global.player_talking = true
		obj_player.sprite_index = spr_player_idle	
	
	} else {
	
		global.player_talking = false
	}
	if room = rm_main and global.store_interaction = false {
	instance_create_layer( 256,256 , "interactions",obj_store_talk)	

	}
	
	
	break
	
	case Gamestate.in_puzzle:
	obj_player.m_vvel = 0
	obj_player.m_hvel = 0		
	global.player_talking = true	
	
	if keyboard_check_pressed(vk_escape)
	{
	
	global.state = Gamestate.Play
		
	}
	
	
	
	break
	
	
	
	default:
	// use this to debug	
	
}




