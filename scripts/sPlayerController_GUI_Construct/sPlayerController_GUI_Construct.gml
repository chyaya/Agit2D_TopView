m_Actions[ACTION_A] = Action.NONE;
m_Actions[ACTION_X] = Action.NONE;
m_Actions[ACTION_Y] = Action.NONE;
	
if(m_Input_AxisL_Step)
{
	if(m_Input_AxisL_Up || m_Input_DPad_Up)
		--m_SelectedConstructIndex;
	else if(m_Input_AxisL_Down || m_Input_DPad_Down)
		++m_SelectedConstructIndex;
}

m_SelectedConstructIndex = clamp(m_SelectedConstructIndex, 1, array_length_1d(global.Construct_Text) - 1);


if(sPlayerController_CanConstruct_MaterialEnough(m_SelectedConstructIndex))
{
	m_Actions[ACTION_A] = Action.SelectDeploy;
}
	