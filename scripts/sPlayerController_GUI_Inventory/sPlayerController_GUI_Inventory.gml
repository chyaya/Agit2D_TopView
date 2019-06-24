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

var oldInven = m_CurrentInven;

if(selectedSlotX < 0)
{
	if(m_CurrentInven[|Inven.LeftInven] == undefined)
	{
		selectedSlotX = 0;
	}
	else
	{
		m_CurrentInven = m_CurrentInven[|Inven.LeftInven];
		selectedSlotX = m_CurrentInven[|Inven.SlotInRowNumber] - 1;
	}
}
else if(selectedSlotX > slotInRow - 1)
{
	if(m_CurrentInven[|Inven.RightInven] == undefined)
	{
		selectedSlotX = slotInRow - 1;
	}
	else
	{
		m_CurrentInven = m_CurrentInven[|Inven.RightInven];
		selectedSlotX = 0;
	}
}

if(oldInven != m_CurrentInven)
{
	selectedSlotY = 0;
}
else
{
	var height = sInven_GetTotalSlotNum(m_CurrentInven)/slotInRow - 1;
	
	if(selectedSlotY < 0)
	{
		selectedSlotY = height;
	}
	else if(selectedSlotY > height)
	{
		selectedSlotY = 0;	
	}
}
		
var itemId = Item.NONE;
		
with(m_PlayerObject)
{
	other.m_CurrentInvenSlot = selectedSlotX + slotInRow*selectedSlotY + 1;
	
	itemId = sInven_GetItemId(other.m_CurrentInven, other.m_CurrentInvenSlot);
}

if(m_CurrentInven == m_PlayerObject.m_Inven_Bag)
{
	if(global.Item_OnUse[itemId] != noone)
		m_Actions[ACTION_A] = Action.UseItem;
}
else
{
	if(itemId > 0)
		m_Actions[ACTION_A] = Action.TakeItem;
}

if(m_CurrentInven == m_PlayerObject.m_Inven_Bag && itemId != Item.NONE)
{
	m_Actions[ACTION_Y] = Action.RemoveItem;
}