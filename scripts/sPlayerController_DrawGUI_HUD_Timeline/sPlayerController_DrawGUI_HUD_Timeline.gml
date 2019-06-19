var viewW = view_wport[0];
var viewH = view_hport[0];

draw_set_alpha(1.0);
draw_set_font(fontGUINormal);

var boxStartX = 50, boxStartY = viewH - 200;
var boxW = 80, boxH = 24;
var boxCenterX = boxStartX + boxW/2, boxCenterY = boxStartY + boxH/2;

draw_set_colour(c_gray);
draw_rectangle(boxCenterX - boxW/2, boxCenterY - boxH/2, boxCenterX + boxW/2, boxCenterY + boxH/2, false);

draw_set_colour(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_text(boxStartX, boxCenterY, "DAY 1");


var barStartX = boxStartX + boxW;
var barStartY = boxCenterY;
var barWidth = 250 - boxW;
var gradHeight = 16;

draw_set_colour(c_gray);
draw_line_width(barStartX, barStartY, barStartX + barWidth, barStartY, 3);

draw_set_colour(c_white);
var dayInWidth = 200/3;
var grad = floor(dayInWidth - oWorldManager.m_TimeInDay*dayInWidth);
for(; grad < barWidth; grad += dayInWidth)
{
	draw_line_width(
		barStartX + grad, barStartY - gradHeight/2,
		barStartX + grad, barStartY + gradHeight/2, 3);	
}