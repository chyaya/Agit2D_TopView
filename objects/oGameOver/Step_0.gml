if(false == m_InputEnable)
	return;
	
if(true == m_Win)
	return;

if(sUtil_GamePad_PressAnyButton() != 0)
{
	room_goto(room_Random);
}