m_Actions[ACTION_A] = Action.NONE;
m_Actions[ACTION_X] = Action.NONE;
m_Actions[ACTION_Y] = Action.NONE;
	
if(m_Input_AxisL_Step)
{
	if(m_Input_AxisL_Up || m_Input_DPad_Up)
	{
		var prevId = sPlayerController_GetPrevVisibleConstructIndex(m_SelectedConstructId);
		
		if(prevId > 0)
			m_SelectedConstructId = prevId;
	}
	else if(m_Input_AxisL_Down || m_Input_DPad_Down)
	{
		var nextId = sPlayerController_GetNextVisibleConstructIndex(m_SelectedConstructId);
		
		if(nextId > 0)
			m_SelectedConstructId = nextId;
	}
}

if(sPlayerController_CanConstruct_MaterialEnough(m_SelectedConstructId))
{
	m_Actions[ACTION_A] = Action.SelectDeploy;
}
	