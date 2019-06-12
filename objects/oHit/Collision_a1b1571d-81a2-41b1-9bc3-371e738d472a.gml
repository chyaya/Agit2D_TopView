if(m_Hit == true)
	return;
	
if(noone == m_OwnerObj || other == m_OwnerObj)
	return;
	
if(false == instance_exists(m_OwnerObj))
	return;
	
if(object_is_ancestor(other.object_index, oPawn))
{
	if(other.m_AI_Control == m_OwnerObj.m_AI_Control)
		return;	
}
	
if(other.object_index == oGhost)
	return;
	
if(other.m_CurHealth <= 0)
	return;

sUtil_CreateNotify(other.x, other.y, string(m_Damage), 0, -30, 5, 0);

other.m_CurHealth = other.m_CurHealth - m_Damage;
other.m_CurHealth = clamp(other.m_CurHealth, 0, other.m_MaxHealth);
m_Hit = true;