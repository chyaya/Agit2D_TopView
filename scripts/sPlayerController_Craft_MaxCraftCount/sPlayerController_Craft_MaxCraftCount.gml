var craftId = argument0;

var count = [];

with(m_PlayerObject)
{
	var materialItemId = global.Craft_Material_ItemId[craftId];
	var materialCount = global.Craft_Material_Count[craftId];
	
	for(var i = 0; i < array_length_1d(materialItemId); ++i)
	{
		var hasItemNum = sInven_ItemNumber(m_Inven_Bag, materialItemId[i]);
		
		count[i] = floor(hasItemNum / materialCount[i]);
	}
}

if(array_length_1d(count) == 0)
	return 0;

var _min = count[0];

for(var i = 1; i < array_length_1d(count); ++i)
{
	if(_min > count[i])
		_min = count[i];
}

return _min;