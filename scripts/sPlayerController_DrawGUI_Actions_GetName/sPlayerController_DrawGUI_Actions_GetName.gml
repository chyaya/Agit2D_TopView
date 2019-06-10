var action = argument0;

if(action != Action.SelectCraft_All
	&& action != Action.SelectCraft_HalfOfAll)
{
	return m_ActionName[action];
}
else
{
	var craftId;
	with(m_InteractionObject)
	{
		craftId = m_CraftList[m_SelectedCraftIndex];
	}
	
	var maxCount = sPlayerController_Craft_MaxCraftCount(craftId);
	
	if(maxCount > 0)
	{
		if(action == Action.SelectCraft_HalfOfAll)
			maxCount = ceil(maxCount/2);
	
		return m_ActionName[action] + "(" + string(maxCount) + ")";
	}

	return m_ActionName[action];
}