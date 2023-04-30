/// @description Insert description here
// You can write your code in this editor
if state == "attack"
{

	state = "chase"
	room_goto(rm_1f_passway_night)
	obj_player.x = 326
	obj_player.y = 240
}