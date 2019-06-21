m_Actions[ACTION_A] = Action.NONE;
m_Actions[ACTION_X] = Action.NONE;
m_Actions[ACTION_Y] = Action.NONE;
	
if(m_Input_AxisL_Step)
{
	if(m_Input_AxisL_Up || m_Input_DPad_Up)
	{
		var prevId = sPlayerController_GetPrevVisibleJournalIndex(m_SelectedJournalId);
		
		if(prevId > 0)
			m_SelectedJournalId = prevId;
	}
	else if(m_Input_AxisL_Down || m_Input_DPad_Down)
	{
		var nextId = sPlayerController_GetNextVisibleJournalIndex(m_SelectedJournalId);
		
		if(nextId > 0)
			m_SelectedJournalId = nextId;
	}
}

//if(sPlayerController_CanJournal_MaterialEnough(m_SelectedJournalId))
//{
//	m_Actions[ACTION_A] = Action.SelectDeploy;
//}
	