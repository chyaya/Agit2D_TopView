var _x = argument0;
var _y = argument1;
var _w = argument2;
var _h = argument3;
var _listIndex = argument4;
var _listPage = argument5;
var _listMax = argument6;

var _lineH = _h/_listMax;
var _barStart = _listIndex*_lineH;
var _barH = _lineH*_listPage;

draw_set_color(c_gray);
draw_rectangle(_x, _y, _x + _w, _y + _h, false);
	
draw_set_color(c_white);
draw_rectangle(_x, _y + _barStart, _x + _w, _y + _barStart + _barH, false);
