/// @description Insert description here
// You can write your code in this editor
if change_follow = 0
{
	
follow = obj_player	
	
}else if change_follow = 1
{
	
follow = obj_An_Zhou	
	
}



xTo = follow.x
yTo = follow.y - 48


x += (xTo - x) / 15
y += (yTo - y) / 15

x = clamp(x, cam_width_half, room_width - cam_width_half)
y = clamp(y, cam_height_half, room_height - cam_height_half)

//screen shake
x += random_range(-global.shake_remain, global.shake_remain)
y += random_range(-global.shake_remain, global.shake_remain)

global.shake_remain = max(0, global.shake_remain - ((1/global.shake_remain) * global.shake_magnitude))

camera_set_view_pos(cam, x- cam_width_half, y - cam_height_half)