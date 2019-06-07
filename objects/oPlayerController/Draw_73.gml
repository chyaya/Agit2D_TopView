
event_inherited();

if(m_Mode == Mode.Building)
{
	with(m_PlayerObject)
	{
		var pos = sUtil_GetBuildingDeployPos(
			x + m_TargetOffsetX, y + m_TargetOffsetY, other.m_SelectedCraftIndex);
		var sprite = global.Craft_Sprite[other.m_SelectedCraftIndex];

		draw_sprite_ext(sprite, 0, pos[0], pos[1], 1, 1, 0, c_green, 0.5);
	}
}