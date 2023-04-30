/// @description Insert description here
// You can write your code in this editor
light[| eLight.X] = 32;
light[| eLight.Y] = 58;
light[| eLight.Flags] |= eLightFlags.Dirty;

if counted = false {
mytime --
}
if mytime <= 0 
{
	
instance_create_layer(123,64,"light",obj_light_puzzle_red)		
counted = true
mytime = timer

}