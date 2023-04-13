/// @description Insert description here
// You can write your code in this editor
if instance_place(x,y,obj_player) {
	if keyboard_check_pressed(ord("W")) {

	obj_player.x = target_x
	obj_player.y = target_y
	obj_camera.x = target_x
	obj_camera.y = target_y
	room_goto(target_room)
		
	}
	
}
