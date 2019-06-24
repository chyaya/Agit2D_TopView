var action = argument0;

if(m_InteractionObject != noone && object_is_ancestor(m_InteractionObject.object_index, oBuildingCraft))
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
else
{
	return m_ActionName[action];
}