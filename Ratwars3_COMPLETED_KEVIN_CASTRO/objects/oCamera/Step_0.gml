// updates camera location 
if(instance_exists(follow))
{
	xTo = follow.x;
	yTo = follow.y;
	if ((follow).object_index == oPDead)
	{
		x = xTo;
		y = yTo;
		
	}
}

//update object position 

x += (xTo - x) / 15;
y += (yTo - y) / 15;

// keep camera inside the room
x = clamp(x,view_w_half+buff,room_width-view_w_half-buff);
y = clamp(y,view_h_half+buff,room_height-view_h_half-buff);

// screen shake 
x += random_range(-shake_remain,shake_remain);
y += random_range(-shake_remain,shake_remain);
shake_remain = max(0,shake_remain-((1/shake_length)*shake_magnitude));

//update camera view 
camera_set_view_pos(cam,x-view_w_half,y-view_h_half);


