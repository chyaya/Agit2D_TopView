m_ActionNames[ACTION_A] = "";
m_ActionNames[ACTION_X] = "";
m_ActionNames[ACTION_Y] = "";
	
if(m_Input_AxisL_Step)
{
	if(m_Input_AxisL_Up || m_Input_DPad_Up)
		--m_SelectedCraftIndex;
	else if(m_Input_AxisL_Down || m_Input_DPad_Down)
		++m_SelectedCraftIndex;
}


m_SelectedCraftIndex = clamp(m_SelectedCraftIndex, 1, array_length_1d(global.Craft_Text) - 1);
