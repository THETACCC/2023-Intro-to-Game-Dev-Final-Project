/// @description Insert description here
// You can write your code in this editor
cam = view_camera[0]
follow = obj_player

cam_width_half = camera_get_view_width(cam) * 0.5
cam_height_half = camera_get_view_height(cam) * 0.5
xTo = xstart
yTo = ystart

global.shake_length = 0
global.shake_magnitude = 0
global.shake_remain = 0
