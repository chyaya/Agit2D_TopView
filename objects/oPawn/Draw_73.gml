var old_image_xscale = image_xscale;
image_xscale = 1;

if(global.ShowDebug_AI && oPlayerController.m_PlayerObject != self)
{
	if(m_AI_Control && m_AI_PlayerVisible)
	{
		var lineColor = c_white;
		if(m_AI_TargetObject != noone)
			lineColor = c_red;
		
		draw_circle_colour(x, y, m_AI_SearchRange, lineColor, lineColor, true);
	}
	
	if(m_Path != undefined)
	{
	    for(var i = 0; i < path_get_number(m_Path) - 1; i++)
	    {
			draw_set_color(c_yellow);
			
	        draw_line(
				path_get_point_x(m_Path, i),
				path_get_point_y(m_Path, i),
				path_get_point_x(m_Path, i + 1),
				path_get_point_y(m_Path, i + 1));
	    }
	}


}

#macro BAR_HEIGHT 1

if(m_CurHealth > 0 && m_CurHealth < m_MaxHealth)
{
	var barX = x - sprite_width/2;
	var barY = y - (sprite_height/2 + 3);
	
	draw_set_colour(c_white);
	draw_rectangle(barX, barY, barX + sprite_width, barY + BAR_HEIGHT, false);
	
	draw_set_colour(c_red);
	
	var healthRate = clamp(m_CurHealth/m_MaxHealth, 0.0, 1.0);
	
	if(healthRate > 0)
		draw_rectangle(barX, barY, barX + sprite_width*healthRate, barY + BAR_HEIGHT, false);
}

image_xscale = old_image_xscale;