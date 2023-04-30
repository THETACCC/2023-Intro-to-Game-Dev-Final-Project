/// @description Insert description here
// You can write your code in this editor
light[| eLight.X] = 497;
light[| eLight.Y] = 64;
light[| eLight.Flags] |= eLightFlags.Dirty;

if counted = false {
mytime --
}
if mytime <= 0 
{
	
instance_create_layer(607,58,"light",obj_light_puzzle_blue)		
counted = true
mytime = timer

}