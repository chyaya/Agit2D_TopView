var craftId = argument0;
var count = argument1;

with(m_PlayerObject)
{
	var materialItemId = global.Craft_Material_ItemId[craftId];
	var materialCount = global.Craft_Material_Count[craftId];
	
	for(var i = 0; i < array_length_1d(materialItemId); ++i)
	{
		var itemId = materialItemId[i];
		
		if(sInven_ItemNumber(m_Inven_Bag, itemId) < materialCount[i]*count)
			return false;
	}
}

return true;