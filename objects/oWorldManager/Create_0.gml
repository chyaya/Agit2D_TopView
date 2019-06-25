m_StartupUnixTimeStamp = sUtil_UnixTimeStamp();
m_StartupCurrentTime = current_time*0.001;
m_TimeInDay = 0;
m_LastTimeInDay = -1;

m_DayInSecond = 60*7;
m_CurrentDay = 0;

m_PauseTime = false;
m_DontSave = false;

m_NextEvents = ds_list_create();
m_RespawnQueue = ds_list_create();