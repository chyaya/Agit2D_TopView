var _x = argument0;
var _y = argument1;
var craftId = argument2;

if(false == sPlayerController_CanBuild(craftId))
	return;

var object = global.Craft_Result[craftId];
	
if(object == noone)
	return;

with(m_PlayerObject)
{	
	var materialItemId = global.Craft_Material_ItemId[craftId];
	var materialCount = global.Craft_Material_Count[craftId];
	
	for(var i = 0; i < array_length_1d(materialItemId); ++i)
	{
		var result = sPawn_Inven_RemoveItemById(
			materialItemId[i], materialCount[i]);
	
		assert_equal(result, 0);
	}
	
	var pos = sUtil_GetBuildingDeployPos(_x, _y, craftId);
	
	
	with(instance_create_layer(pos[0], pos[1], layer, oBlank))
	{
		m_CraftId = craftId;
	
		instance_change(object, true);
	}
}

