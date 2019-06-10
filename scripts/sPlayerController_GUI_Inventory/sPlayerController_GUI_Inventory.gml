m_Actions[ACTION_A] = Action.NONE;
m_Actions[ACTION_X] = Action.NONE;
m_Actions[ACTION_Y] = Action.NONE;
	
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
m_SelectedSlotY = clamp(m_SelectedSlotY, 0, sInven_GetTotalSlotNum(m_PlayerObject.m_Inven_Bag)/m_SlotsInRow - 1);
		
var itemId = Item.NONE;
		
with(m_PlayerObject)
{
	var newPos = other.m_SelectedSlotX + other.m_SlotsInRow*other.m_SelectedSlotY + 1;
	sInven_SetSelectedPos(m_Inven_Bag, newPos);
	
	itemId = sInven_GetItemId(m_Inven_Bag, newPos);
}

if(global.Item_OnUse[itemId] != noone)
{
	other.m_Actions[ACTION_A] = Action.UseItem;
}