if(m_PlayerObject != noone && m_PlayerObject.object_index == oGhost)
{
	if(room == room_Boss)
	{
		draw_set_colour(c_red);
	}
	else
	{
		draw_set_colour(c_aqua);
	}
	draw_set_alpha(0.2);
	draw_rectangle(0, 0, view_wport[0], view_hport[0], false);
}