/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y,obj_title_mouse)
{
	image_xscale = lerp(image_xscale,1.1,0.08)
	image_yscale = lerp(image_yscale,1.1,0.08)	
	
	if mouse_check_button_pressed(mb_left)
	{
	open_credit = true
	obj_return.open_credit = true	
	obj_credit_screen.appear = true		
	audio_play_sound(snd_click,1,false)
	}
	
} else {
	
	image_xscale = lerp(image_xscale,1,0.06)
	image_yscale = lerp(image_yscale,1,0.06)		

}
if 	open_credit = true and image_alpha >= -0.1 {
image_alpha -= 0.05	

} 
if open_credit = false and image_alpha <= 1
{

image_alpha += 0.05	
	
}
if instance_exists(obj_mytextbox)
{
	

	instance_destroy(self)
}
