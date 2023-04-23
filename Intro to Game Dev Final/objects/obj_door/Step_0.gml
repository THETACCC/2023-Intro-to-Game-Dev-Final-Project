/// @description Insert description here
// You can write your code in this editor
if instance_place(x,y,obj_player) {

	if (!instance_exists(obj_W))
	{
		
	instance_create_layer(obj_player.x,obj_player.y-70, "Instances",obj_W)
	
	}
	if keyboard_check_pressed(ord("W")) {
	obj_player.m_vvel = 0
	obj_player.m_hvel = 0		
	obj_player.image_index = spr_player_idle	
	obj_room_transition_out.start_transition = true

		
	}

	if transition = true {
	obj_player.m_vvel = 0
	obj_player.m_hvel = 0		
	obj_player.image_index = spr_player_idle	
	obj_player.x = target_x
	obj_player.y = target_y
	obj_camera.x = target_x
	obj_camera.y = target_y
	room_goto(target_room)
	
	}
} 
