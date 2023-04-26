/// @description Insert description here
// You can write your code in this editor

switch(state)
{
	case 0:
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
		conversation_end = true	
		start_moving = true		
		state = 1		
		}
	
}
	break
 	case 1:
 
 
if instance_place(x,y,obj_An_Zhou_position)
{
		start_moving = false	
		speed = 0

} else if start_moving = true 	and	conversation_end = true	 {
		
move_towards_point(obj_An_Zhou_position.x,y,2)

} 
 
 
 
	break 
}


