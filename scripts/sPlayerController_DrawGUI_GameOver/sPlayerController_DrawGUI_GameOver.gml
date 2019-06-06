if(m_GameOver)
{
	draw_set_colour(c_black);
	draw_set_alpha(0.6);
	draw_rectangle(0, 0, view_wport[0], view_hport[0], false);
	
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_font(fontGUIGameOver);
	
	if(m_GameOver_Win)
	{
		draw_text_color(view_wport[0]/2, view_hport[0]/2, "You Win!", c_blue, c_blue, c_white, c_white, 1);
	}
	else
	{
		draw_text_color(view_wport[0]/2, view_hport[0]/2, "Game Over", c_red, c_red, c_black, c_black, 1);
	}
	
	draw_set_alpha(1);
}