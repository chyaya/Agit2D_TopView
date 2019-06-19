var viewW = view_wport[0];
var viewH = view_hport[0];

draw_set_colour(c_white);
draw_set_alpha(1.0);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(fontGUINormal);

var text_x = 50, text_y = viewH - 200;
var line_h = 40, offset = 280;
var barW = 250, barH = 24, barOutline = 0;

if(m_PlayerObject != noone)
{
	text_y += line_h;
	
	var healthRate = m_PlayerObject.m_CurHealth / m_PlayerObject.m_MaxHealth;

	if(barOutline > 0)
	{
		draw_set_colour(c_white);
		draw_rectangle(text_x-barOutline, text_y-barOutline,
			text_x + barW + barOutline, text_y + barH + barOutline, false);
	}

	draw_set_colour(c_gray);
	draw_rectangle(text_x, text_y, text_x + barW, text_y + barH, false);

	draw_set_colour($241CEE);
	draw_rectangle(text_x, text_y, text_x + barW*healthRate, text_y + barH, false);
	
	draw_set_colour(c_white);
	draw_text(text_x, text_y,
		string(m_PlayerObject.m_CurHealth) + "/" + string(m_PlayerObject.m_MaxHealth));
	
	text_y += line_h;
	
	
	var satietyRate = m_PlayerObject.m_CurSatiety / m_PlayerObject.m_MaxSatiety;
	
	if(barOutline > 0)
	{
		draw_set_colour(c_white);
		draw_rectangle(text_x-barOutline, text_y-barOutline,
			text_x + barW + barOutline, text_y + barH + barOutline, false);
	}
	
	draw_set_colour(c_gray);
	draw_rectangle(text_x, text_y, text_x + barW, text_y + barH, false);

	draw_set_colour($51A600);
	draw_rectangle(text_x, text_y, text_x + barW*satietyRate, text_y + barH, false);

	var satietyTextColor = c_white;

	if(m_PlayerObject.m_CurSatiety <= 0)
	{
		satietyTextColor = current_second % 2 ? c_white : c_red;
	}
	
	draw_set_colour(satietyTextColor);
	draw_text(text_x, text_y,
		string(m_PlayerObject.m_CurSatiety) + "/" + string(m_PlayerObject.m_MaxSatiety));
	text_y += line_h;
	
	
	//draw_text(text_x, text_y, "Satiety:");
	//draw_text(text_x + offset, text_y,
	//	string(m_PlayerObject.m_CurSatiety) + "/" + string(m_PlayerObject.m_MaxSatiety));
	//text_y += line_h;
}

/*
var soulTextColor = c_white;

if(m_CurSoulPoint <= m_UnpossessCost)
{
	soulTextColor = current_second % 2 ? c_white : c_red;
}

text_x = view_wport[0] - 420;
text_y = 10;
draw_text_color(text_x, text_y, "Soul:",
	soulTextColor, soulTextColor, soulTextColor, soulTextColor, 1);
draw_text_color(text_x + offset, text_y, string(m_CurSoulPoint) + "/" + string(m_MaxSoulPoint),
	soulTextColor, soulTextColor, soulTextColor, soulTextColor, 1);
text_y += line_h;
*/