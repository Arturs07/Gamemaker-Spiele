rightkey=keyboard_check(vk_right)
leftkey=keyboard_check(vk_left)
JumpKeyPressed = keyboard_check(vk_space)


moveDir= rightkey - leftkey;
if moveDir!=0
{
face=moveDir;	
}

xspd= moveDir * moveSpd;

var _subPixel = .5;
if place_meeting(x + xspd, y,oSolid) 
{
	var _pixelCheck= _subPixel * sign(xspd)
	while !place_meeting(x + _pixelCheck, y, oSolid) 
	{
		x +=_pixelCheck;
	}
	
	xspd=0;
	
}
var _subPixel = .5;
if place_meeting(x + xspd, y,oBoden) 
{
	var _pixelCheck= _subPixel * sign(xspd)
	while !place_meeting(x + _pixelCheck, y, oBoden) 
	{
		x +=_pixelCheck;
	}
	
	xspd=0;
	
}
x+=xspd;

yspd +=grav;

if JumpKeyPressed && place_meeting(x, y+1, oSolid)
{
	yspd = Jumpspd;
}
var _subPixel = .5;
if place_meeting(x, y + yspd, oSolid)
{
	var _pixelCheck = _subPixel * sign(yspd);
	while !place_meeting(x, y + _pixelCheck, oSolid)
	{
		y += _pixelCheck;
	}
	
	yspd = 0;
}


y += yspd;

if place_meeting(x,y,oItem)
{
	sprite_index = sUpgrade
	moveSpd = moveSpd+1;
	Jumpspd = Jumpspd-0.5;
	instance_destroy(oItem)
}

if place_meeting(x,y+1,oGegner)
{
	instance_destroy(oGegner);
}

if place_meeting(x,y+1,oGegner_1)
{
	instance_destroy(oGegner_1);
}

if place_meeting(x,y+1,oGegner_2)
{
	instance_destroy(oGegner_2);
}

if place_meeting(x,y+1,oGegner_3)
{
	instance_destroy(oGegner_3);
}

if keyboard_check_pressed(vk_f11)
{
window_set_fullscreen(true)
}
 if keyboard_check_pressed(vk_f10)
{
window_set_fullscreen(false)
}
if keyboard_check_pressed(vk_f11)
{
window_set_fullscreen(true)
}
