/// @description Insert description here
// You can write your code in this editor
if obj_camera.change_follow = 1 && (obj_camera.x = obj_camera.xprevious  && conversation_1 = false ){

		if !(instance_exists(obj_mytextbox))
		{
		create_textbox("An_Zhou_initial_2")
		conversation_1 = true
		}
	
}

if obj_camera.change_follow = 0 && (obj_camera.x = obj_camera.xprevious ) && conversation_1 = true {

		if !(instance_exists(obj_mytextbox))
		{
		create_textbox("An_Zhou_initial_4")
		conversation_1 = false	
		move_towards_point(obj_An_Zhou_position.x,y,2)
		}
	
}
