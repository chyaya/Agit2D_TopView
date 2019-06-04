var nightColor = $310002;
var dayColor = $E8A162;

var day = m_TimeInDay < 0.5 ? m_TimeInDay*2 : 2 - m_TimeInDay*2;
var color = merge_color(nightColor, dayColor, day);

draw_set_color(color);
draw_rectangle(0, 0, view_wport[0], 50, false);


draw_sprite_stretched(s_sun, 0, (view_wport[0]+50)*m_TimeInDay - 50, 0, 50, 50);