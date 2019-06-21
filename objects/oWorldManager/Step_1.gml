if(false == m_PauseTime)
{
	m_TimeInDay = sWorldManager_CalcTimeInDay();

	//show_debug_message("UNIX Time:" + string(s) + ", TimeInDay:" + string(m_TimeInDay));

	/*
	// 새벽 6시
	var timeToProcessADay = 6/24;
	
	if(m_LastTimeInDay >= 0
		&& m_TimeInDay >= timeToProcessADay
		&& m_LastTimeInDay < timeToProcessADay)
	*/
	
	if(m_LastTimeInDay > m_TimeInDay)
	{
		sGameLogic_ProcessADay();	
	
		//show_debug_message("It's another day!");
		
		++m_CurrentDay;
	}

	m_LastTimeInDay = m_TimeInDay;
}

while(ds_list_size(m_NextEvents) < 8)
{
	ds_list_add(m_NextEvents, Event.RobotInvade);
}