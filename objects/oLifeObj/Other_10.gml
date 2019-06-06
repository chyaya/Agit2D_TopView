/// @description Dead

sUtil_PlayRandomSound(m_Sound_Dead);

with(oPlayerController)
{
	if(m_InteractionObject == other)
	{
		m_InteractionObject = noone;
	}
	
	if(m_PlayerObject == other)
	{
		m_PlayerObject = noone;
		
		m_GameOver = true;
	}
}

with(oPawn)
{
	if(m_AI_TargetObject == other)
	{
		m_AI_TargetObject = noone;
	}
}

instance_destroy();