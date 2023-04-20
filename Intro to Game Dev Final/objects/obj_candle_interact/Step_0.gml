/// @description Insert description here
// You can write your code in this editor
 if instance_place(x,y,obj_player) and keyboard_check_pressed(ord("F")) and !instance_exists(obj_candle_puzzle)
 {
	 instance_create_layer(obj_camera.x,obj_camera.y,"puzzles",obj_candle_puzzle)
	 instance_create_layer(obj_camera.x,obj_camera.y+120,"puzzles",obj_candle_light_puzzle)
 }