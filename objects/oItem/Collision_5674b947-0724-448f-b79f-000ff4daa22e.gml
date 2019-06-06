if(m_ActiveTime > current_time)
	return;

with(other)
{
	if(sPawn_Inven_AddItem(other.m_ItemId, 1) == 0)
	{
		var itemName = global.Item_Text[other.m_ItemId];
		
		sUtil_CreateNotify(x, y, itemName, 0, -30);
		
		instance_destroy(other);
	}
	else
	{
		sUtil_CreateNotify(x, y, "Inventory is full", 0, -30);
	}
}