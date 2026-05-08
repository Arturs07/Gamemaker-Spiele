if(room=Impc && global.spinneamleben=true){
	visible=true
}
else{
	visible=false
}
if((global.waffe=false or Maus.visible=true)&& mouse_check_button_pressed(1) && place_meeting(x,y,Maus) && visible = true){
	audio_play_sound(Sound4,1,false)
	global.flash=true;
}