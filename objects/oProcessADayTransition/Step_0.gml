
var currentSec = current_time*0.001;

if(m_Phase == CLOSE)
{
	var rate = 1 - (currentSec - m_StartTime)/m_CloseTime;
	
	if(rate > 0)
	{
		m_CurrentCircleRaduis = m_MaxCircleRadius*rate;
	}
	else
	{
		m_CurrentCircleRaduis = 0;
		m_StartTime = currentSec;
		m_Phase = PAUSE;
		
		sGameLogic_ProcessADayImpl();
		
		
		//switch(m_EventId)
		//{
		//case Event.RobotInvade:
		//	sGameLogic_Respawn(oRobotBeacon, 1, 10);
		//	break;
		//}
		
		
		with(oPlayerController.m_PlayerObject)
		{
			sPlayer_AddSatiety(-5);
		}
		
		with(oPlayerController)
		{
			//PlayerController_SetEnableInput(false);	
		}
	}
}
else if(m_Phase == PAUSE)
{
	if(currentSec >= m_StartTime + m_PauseTime)
	{
		m_StartTime = currentSec;
		m_Phase = OPEN;
		
		with(oPlayerController)
		{
			//PlayerController_SetEnableInput(true);	
		}
	}
	
}
else
{
	var rate = (currentSec - m_StartTime)/m_OpenTime;
	
	if(rate < 1)
	{
		m_CurrentCircleRaduis = m_MaxCircleRadius*rate;
	}
	else
	{
		m_CurrentCircleRaduis = m_MaxCircleRadius;
		
		instance_destroy();
	}
	
}