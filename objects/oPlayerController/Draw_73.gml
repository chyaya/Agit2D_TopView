
event_inherited();

if(m_Mode == Mode.DeployBuilding)
{
	with(m_PlayerObject)
	{
		var pos = sUtil_GetBuildingDeployPos(
			x + m_TargetOffsetX, y + m_TargetOffsetY, other.m_SelectedConstructId);
		var sprite = global.Construct_Sprite[other.m_SelectedConstructId];

		var color = c_white;
		
		with(other)
		{
			if(sPlayerController_CanConstruct_Depoly(m_SelectedConstructId, pos[0], pos[1]))
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