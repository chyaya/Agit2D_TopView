/// @description Dead

sUtil_PlayRandomSound(m_Sound_Dead);

if(oPlayerController.m_PlayerObject == self)
{
	sUtil_DoUnpossess(oPlayerController);
}	

sPawn_Dead();