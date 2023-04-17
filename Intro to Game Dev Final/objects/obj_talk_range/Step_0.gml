/// @description Insert description here
// You can write your code in this editor
if instance_place (x,y, obj_player) && keyboard_check(ord("F")) && !instance_exists(obj_mytextbox) && 	abs(obj_player.m_hvel <= 0.5) && obj_player.m_grounded = true && abs(obj_player.m_vvel <= 0.5)	 {
	check_time --
	if check_time <= 0 {
		create_textbox(text_id)
		check_time = check_timer
	}



} 
show_debug_message(obj_player.m_hvel)