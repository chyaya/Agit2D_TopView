var timeInDay = oWorldManager.m_TimeInDay;
var dayColor = $E8A162;

var color = make_color_rgb(
	cur_color[0]*color_get_red(dayColor),
	cur_color[1]*color_get_green(dayColor),
	cur_color[2]*color_get_blue(dayColor));

var barHeight = 50;
var sunHeight = 40;

draw_set_color(color);
draw_rectangle(0, 0, view_wport[0], barHeight, false);


draw_sprite_stretched(s_sun, 0,
	(view_wport[0]+sunHeight)*timeInDay - sunHeight, (barHeight - sunHeight)/2, sunHeight, sunHeight);