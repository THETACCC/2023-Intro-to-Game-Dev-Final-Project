/// @description Insert description here
// You can write your code in this editor
show_debug_message("follow")
light[| eLight.X] = obj_player.x;
light[| eLight.Y] = obj_player.y;
light[| eLight.Flags] |= eLightFlags.Dirty;