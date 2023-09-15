x = oPlayer.x-3;
y = oPlayer.y+5;

image_angle = point_direction(x,y,mouse_x,mouse_y);

firingdelay = firingdelay - 1; 



if (mouse_check_button(mb_left)) && (firingdelay < 0)
{
	recoil = 4;
	firingdelay = 8; 
	ScreenShake(2,10);
	audio_play_sound(snShot,5,false);
	audio_sound_pitch(snShot,choose(0.9,1.0,0.85));
	with (instance_create_layer(x,y, "Bullets", oBullet)) 
	{
		speed = 25; 
		direction = other.image_angle + random_range (-3,3);
		image_angle = direction; 
	
	}
	
	
	
}

recoil = max(0, recoil - 1);

x = x - lengthdir_x(recoil, image_angle)
y = y - lengthdir_y(recoil, image_angle)