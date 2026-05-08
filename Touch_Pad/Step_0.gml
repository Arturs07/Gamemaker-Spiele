if (string_length(eingabe) == 4) {
    if (eingabe == "6789") {
        room_goto(Ende);
		audio_play_sound(Sound7,1,false);
    } else {
        eingabe = ""; 
    }
}