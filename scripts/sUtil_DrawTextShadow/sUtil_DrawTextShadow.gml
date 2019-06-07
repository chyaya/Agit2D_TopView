var _x = argument0;
var _y = argument1;
var _text = argument2;

var oldColor = draw_get_color();
draw_set_color(c_black);
draw_text(_x + 2, _y + 2, _text);

draw_set_color(oldColor);
draw_text(_x, _y, _text);