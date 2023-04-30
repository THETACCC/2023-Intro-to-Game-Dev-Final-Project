/// @description Insert description here
// You can write your code in this editor
if global.player_inventory = true 
{

	global.state = Gamestate.talking


	
} else {

}
show_debug_message(inventory[0])

if inventory[0] = 4 and inventory[1] = 0 and inventory[2] = 3 and inventory[3] = 2
{
	global.state = Gamestate.Play
	instance_destroy(obj_mask_interact)
	solved = true




}

if solved = true and speaked = false {
		create_textbox("mask_solve")
		speaked = true
}
if inventory[0] = 5 and inventory[1] = 6 and inventory[2] = 7 and inventory[3] = 8 and shaked = false
{
	global.shake_magnitude = 8
	global.shake_remain = global.shake_magnitude
	global.shake_length = 60	
	audio_play_sound(snd_mask_change,1,false)
	audio_play_sound(snd_puzzle_sovled,1,false)	
	audio_play_sound(snd_monster_walking,1,false)		
	shaked = true




}

if room = rm_1f_passway_night {
	instance_destroy(self)	
	
}