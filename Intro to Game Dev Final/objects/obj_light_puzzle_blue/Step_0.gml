/// @description Insert description here
// You can write your code in this editor
light[| eLight.X] = 607;
light[| eLight.Y] = 58;
light[| eLight.Flags] |= eLightFlags.Dirty;

if counted = false {
mytime --
}
if mytime <= 0 
{
instance_create_layer(32,58,"light",obj_gongpin_puzzle_timer_finish)	
instance_destroy(obj_gongpin_puzzle_timer)
instance_destroy(obj_light_puzzle_green)
instance_destroy(obj_light_puzzle_red)
instance_destroy(obj_light_puzzle_white)
instance_destroy(self)		
counted = true
mytime = timer

}