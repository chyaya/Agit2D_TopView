// Inherit the parent event
event_inherited();

if(false == variable_instance_exists(id, "m_CurHealth"))
{
	m_CurHealth = m_MaxHealth;
}

m_LastHealth = m_CurHealth;

if(m_CurHealth == 0)
{
	sPawn_Dead();
}
	
	
m_Sound_Idle = ds_list_create();
m_Sound_Hit = ds_list_create();
m_Sound_Dead = ds_list_create();