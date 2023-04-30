/// @description Insert description here
// You can write your code in this editor
light[| eLight.X] = 123;
light[| eLight.Y] = 64;
light[| eLight.Flags] |= eLightFlags.Dirty;

if counted = false {
mytime --
}
if mytime <= 0 
{
	
instance_create_layer(497,64,"light",obj_light_puzzle_green)		
counted = true
mytime = timer

}