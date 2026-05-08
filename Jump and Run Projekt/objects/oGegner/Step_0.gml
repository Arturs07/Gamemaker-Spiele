xspd= moveDir * moveSpd;

var _subPixel = 1;
if place_meeting(x + xspd, y,oSolid)
{
	var _pixelCheck= _subPixel * sign(xspd)
	while !place_meeting(x + _pixelCheck, y, oSolid)
	{
		x +=_pixelCheck;
	}
	
	xspd=0;
	moveDir = moveDir *-1
	
	
}
x+=xspd;

yspd +=grav;

var _subPixel = 1;
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

if place_meeting(x,y,oPlayer)
{
	room_restart();
}



	