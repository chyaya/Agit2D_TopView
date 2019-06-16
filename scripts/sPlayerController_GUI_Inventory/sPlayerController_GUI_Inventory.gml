m_Actions[ACTION_A] = Action.NONE;
m_Actions[ACTION_X] = Action.NONE;
m_Actions[ACTION_Y] = Action.NONE;

var slotInRow = sInven_GetSlotInRow(m_CurrentInven);
var selectedSlotX = (m_CurrentInvenSlot - 1) mod slotInRow;
var selectedSlotY = floor((m_CurrentInvenSlot - 1) / slotInRow);

if(m_Input_AxisL_Step)
{
	if(m_Input_AxisL_Left || m_Input_DPad_Left)
	{
		--selectedSlotX;
	}
	else if(m_Input_AxisL_Right || m_Input_DPad_Right)
	{
		++selectedSlotX;
	}
	else if(m_Input_AxisL_Up || m_Input_DPad_Up)
	{
		--selectedSlotY;
	}
	else if(m_Input_AxisL_Down || m_Input_DPad_Down)
	{
		++selectedSlotY;
	}
}

	
selectedSlotX = clamp(selectedSlotX, 0, slotInRow - 1);
selectedSlotY = clamp(selectedSlotY, 0, sInven_GetTotalSlotNum(m_CurrentInven)/slotInRow - 1);
		
var itemId = Item.NONE;
		
with(m_PlayerObject)
{
	other.m_CurrentInvenSlot = selectedSlotX + slotInRow*selectedSlotY + 1;
	
	itemId = sInven_GetItemId(other.m_CurrentInven, other.m_CurrentInvenSlot);
}

if(global.Item_OnUse[itemId] != noone)
{
	other.m_Actions[ACTION_A] = Action.UseItem;
}