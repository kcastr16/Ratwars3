// @desc ScreenShake(magnitude,frames)
// @arg Mangitude sets the strenght of the shake (radius in pixels)
// @arg Frames sets the length of the shake in frames (60 - 0 second at 60fps)

with (oCamera)
{
	if (argument0 > shake_remain) 
	{
		shake_magnitude = argument0; 
		shake_remain = argument0;
		shake_length = argument1;
	}

}