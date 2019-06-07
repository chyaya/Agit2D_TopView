if(!m_ShowInventory)
{
	
	
	if(m_InteractionObject != noone)
	{
		if(object_is_ancestor(m_InteractionObject.object_index, oProp))
		{
			m_ActionNames[ACTION_Y] = m_InteractionObject.m_ActionName;
		}
	}
	
	
}
else
{
	
}