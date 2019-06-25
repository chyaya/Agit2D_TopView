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
	
if(other.m_Invinsible)
	return;
	
var damage = other.m_IsResource ? m_GatheringDamage : m_CombatDamage;

with(other)
{
	sPawn_AddHealth(-damage);	
}

m_Hit = true;

sUtil_CreateNotify(other.x, other.y, string(damage), 0, -30, 5, 0);