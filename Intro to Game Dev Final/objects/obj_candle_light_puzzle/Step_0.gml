/// @description Insert description here
// You can write your code in this editor
if global.state = Gamestate.in_puzzle and image_alpha <= 2{
	image_alpha += 0.02

}else if image_alpha >=  -0.1{

	image_alpha -= 0.02
}

if image_alpha <= 0 
{
	
	create_textbox("find_light")
	audio_play_sound(snd_scary_violin,1,true)		
	audio_sound_gain(snd_scary_violin,0,0)		
	audio_sound_gain(snd_scary_violin,1,4000)			
	
	instance_destroy(self)

	
}
if image_index >= 7
{
		
image_index = 8	
		
}

clamp(image_alpha,-0.1,1)