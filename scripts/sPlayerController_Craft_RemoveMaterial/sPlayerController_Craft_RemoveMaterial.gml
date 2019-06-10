var craftId = argument0;

with(m_PlayerObject)
{
	var materialItemId = global.Craft_Material_ItemId[craftId];
	var materialCount = global.Craft_Material_Count[craftId];
	
	for(var i = 0; i < array_length_1d(materialItemId); ++i)
	{
		sInven_RemoveItemById(m_Inven_Bag, materialItemId[i], materialCount[i]);
	}
}
