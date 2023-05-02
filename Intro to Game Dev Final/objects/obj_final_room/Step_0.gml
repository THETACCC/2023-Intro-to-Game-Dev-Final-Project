/// @description Insert description here
// You can write your code in this editor
if !instance_exists(obj_final_initial) and !instance_exists(obj_mytextbox) and played = false
{
	
	audio_play_sound(snd_final_bgm,1,false)
	played = true
}
if played = true and !audio_is_playing(snd_final_bgm)
{
	
	game_restart()	
	
}