/// @description Insert description here
// You can write your code in this editor


if appear = true and image_alpha <= 1 {
	image_alpha += 0.05
	
}else if appear = false and image_alpha >= -0.1 {
	image_alpha -= 0.05
}



clamp(image_alpha,-0.1,1)
