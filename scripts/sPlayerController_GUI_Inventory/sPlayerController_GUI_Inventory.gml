m_ActionNames[ACTION_A] = "";
m_ActionNames[ACTION_X] = "";
m_ActionNames[ACTION_Y] = "";
	
if(m_Input_AxisL_Step)
{
	if(m_Input_AxisL_Left || m_Input_DPad_Left)
		--m_SelectedSlotX;
	else if(m_Input_AxisL_Right || m_Input_DPad_Right)
		++m_SelectedSlotX;
	else if(m_Input_AxisL_Up || m_Input_DPad_Up)
		--m_SelectedSlotY;
	else if(m_Input_AxisL_Down || m_Input_DPad_Down)
		++m_SelectedSlotY;
}

	
m_SelectedSlotX = clamp(m_SelectedSlotX, 0, m_SlotsInRow - 1);
m_SelectedSlotY = clamp(m_SelectedSlotY, 0, m_PlayerObject.total_slots/m_SlotsInRow - 1);
		
var itemId = ItemType.NONE;
		
with(m_PlayerObject)
{
	selected = other.m_SelectedSlotX + other.m_SlotsInRow*other.m_SelectedSlotY + 1;
	
	itemId = inv[selected];
}

if(global.Item_OnUse[itemId] != noone)
{
	other.m_ActionNames[ACTION_A] = "Use";
}