var craftId = argument0;

with(m_PlayerObject)
{
	var materialItemId = global.Craft_Material_ItemId[craftId];
	var materialCount = global.Craft_Material_Count[craftId];
	
	for(var i = 0; i < array_length_1d(materialItemId); ++i)
	{
		sPawn_Inven_RemoveItemById(materialItemId[i], materialCount[i]);
	}
}
