/// @description Insert description here
// You can write your code in this editor
clamp(image_alpha,-0.1,1)
if appear = true and image_alpha <= 1 {
	
image_alpha += 0.05	
	
} else if appear = false  {
image_alpha -= 0.1	

	
}
if image_alpha < 0 {
	instance_destroy(self)
}
