/// @description Dead

// Inherit the parent event
event_inherited();

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
		m_Mode = Mode.Move;
	}
}

with(oPawn)
{
	if(m_AI_TargetObject == other)
	{
		m_AI_TargetObject = noone;
	}
}

with(oHit)
{
	if(m_OwnerObj == other)
	{
		m_OwnerObj = noone;
	}
}

instance_destroy();