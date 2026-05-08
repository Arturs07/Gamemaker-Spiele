var _data = video_draw();
if (_data[0] == 0){
	var _surface = _data[1];
	draw_surface_stretched(_surface, 0, 0, room_width, room_height);
}