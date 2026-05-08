if(room=PC or room=PCoffen){
room_goto(Gang);
}
if(room=Impc){
	room_goto(PCoffen)
}
if(room=Waschbecken or room=podest){
	room_goto(Schrankundtur)
}
if(room=Schrankoeffen){
	room_goto(Schrankundtur)
}

if (room =Desktop){
	room_goto(PCoffen)
}
if (room =Dateibild){
	room_goto(Desktop)
}

if (room = clip67){
	room_goto(Dateibild)
}

if (room = Whiteboard){
	room_goto(Boardraum)
}

if (room = Passwort_eingeben){
	room_goto(Dateibild)
}

if (room = Code_Raum){
	room_goto(Dateibild)
}

if (room = Schrankoeffen_1){
	room_goto(Schrankundtur)
}