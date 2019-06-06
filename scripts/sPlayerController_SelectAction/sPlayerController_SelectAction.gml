if(!m_ShowInventory)
{
	m_ActionNames[ACTION_Y] = "Open Bag";
	
	if(m_InteractionObject != noone)
	{
		if(object_is_ancestor(m_InteractionObject.object_index, oProp))
		{
			m_ActionNames[ACTION_A] = m_InteractionObject.m_ActionName;
		}
	}
	
	m_ActionNames[ACTION_X] = "Attack";
	
	with(m_PlayerObject)
	{
		if(global.Item_OnUse[inv[selected]] != noone)
		{
			other.m_ActionNames[ACTION_Y] = "Use";
		}
	}
}
else
{
	m_ActionNames[ACTION_Y] = "Close Bag";
}