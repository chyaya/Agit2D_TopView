var materialItemId = global.Craft_Material_ItemId[m_CraftId];
var materialCount = global.Craft_Material_Count[m_CraftId];
	
for(var i = 0; i < array_length_1d(materialItemId); ++i)
{
	sGameLogic_CreateItem(x, y, materialItemId[i], materialCount[i]);
}