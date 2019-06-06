/// @description Insert description here
// You can write your code in this editor

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_set_font(fontGUIGameOver);

draw_text_color(view_wport[0]/2, view_hport[0]/2 - 250,
	"Agit 2D", c_gray, c_gray, c_white, c_white, 1);

draw_set_font(fontGUINormal);

var s = floor(current_time/500) % 2;

if(s == 0)
	draw_text(view_wport[0]/2, view_hport[0]/2 - 50, "PRESS ANY KEY TO START")