var action = argument0;

if(action != Action.SelectCraft_All
	&& action != Action.SelectCraft_HalfOfAll)
{
	return m_ActionName[action];
}
else
{
	var craftId = m_InteractionObject.m_SelectedCraftId;
	var maxCount = sPlayerController_Craft_MaxCraftCount(craftId);
	
	if(maxCount > 0)
	{
		if(action == Action.SelectCraft_HalfOfAll)
			maxCount = ceil(maxCount/2);
	
		return m_ActionName[action] + "(" + string(maxCount) + ")";
	}

	return m_ActionName[action];
}