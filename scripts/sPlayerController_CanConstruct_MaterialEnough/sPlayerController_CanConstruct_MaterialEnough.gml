var constructId = argument0;

with(m_PlayerObject)
{
	var materialItemId = global.Construct_Material_ItemId[constructId];
	var materialCount = global.Construct_Material_Count[constructId];
	
	for(var i = 0; i < array_length_1d(materialItemId); ++i)
	{
		var itemId = materialItemId[i];
		
		if(sPawn_Inven_ItemNumber(itemId) < materialCount[i])
			return false;
	}
}

return true;