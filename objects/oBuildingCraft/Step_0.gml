/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(m_CraftingCount > 0)
{
	var craftId = m_CraftList[m_SelectedCraftIndex];
	var craftTime = global.Craft_Time[craftId];
	
	if(current_time >= m_CraftingStartTime + craftTime)
	{
		--m_CraftingCount;
		
		sGameLogic_CreateItem(x, y, global.Craft_Result[craftId], 1);
	}
}