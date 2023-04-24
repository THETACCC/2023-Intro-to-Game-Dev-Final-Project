/// @description Insert description here
// You can write your code in this editor

 
 if instance_place (x,y, obj_player) && keyboard_check(ord("F")) && !instance_exists(obj_mytextbox) && 	abs(obj_player.m_hvel <= 0.5) && obj_player.m_grounded = true && abs(obj_player.m_vvel <= 0.5) and !instance_exists(obj_candle_puzzle)	 {
	check_time --
	if check_time <= 0  {
	 global.state = Gamestate.in_puzzle
	obj_F.my_create = false
	 instance_create_layer(obj_camera.x,obj_camera.y,"puzzles",obj_candle_puzzle)
	 instance_create_layer(obj_camera.x,obj_camera.y+120,"puzzles",obj_candle_light_puzzle)
	 instance_create_layer(obj_camera.x,obj_camera.y - 40,"puzzle_2",obj_candle_puzzle_corret_place)	 	 
	 instance_create_layer(0,0,"screen_effect",obj_screen_effect)	 
	 check_time = check_timer

	}



} 
if instance_place(x,y,obj_player) && !keyboard_check(ord("F")) && !global.state = Gamestate.in_puzzle {
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