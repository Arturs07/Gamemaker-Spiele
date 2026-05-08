draw_self();
draw_set_font(Font2);
draw_set_color(c_black);
var start_x = 540; 
var start_y = 300; 
var abstand = 60;  

for (var i = 0; i < string_length(eingabe); i++) {
   
    draw_text(start_x + (i * abstand), start_y, "*");
}