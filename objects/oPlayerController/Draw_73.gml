
event_inherited();

if(m_Mode == Mode.Building)
{
	with(m_PlayerObject)
	{
		var pos = sUtil_GetBuildingDeployPos(
			x + m_TargetOffsetX, y + m_TargetOffsetY, other.m_SelectedCraftIndex);
		var sprite = global.Craft_Sprite[other.m_SelectedCraftIndex];

		var color = c_white;
		
		with(other)
		{
			if(sPlayerController_CanBuild_Depoly(m_SelectedCraftIndex, pos[0], pos[1]))
			{
				color = c_green;
			}
			else
			{
				color = c_red;	
			}
		}

		draw_sprite_ext(sprite, 0, pos[0], pos[1], 1, 1, 0, color, 0.5);
	}
}