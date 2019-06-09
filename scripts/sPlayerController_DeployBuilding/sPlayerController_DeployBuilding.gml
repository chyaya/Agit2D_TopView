var _x = argument0;
var _y = argument1;
var constructId = argument2;

if(false == sPlayerController_CanConstruct_MaterialEnough(constructId))
	return;

var object = global.Construct_Result[constructId];
	
if(object == noone)
	return;

with(m_PlayerObject)
{	
	var materialItemId = global.Construct_Material_ItemId[constructId];
	var materialCount = global.Construct_Material_Count[constructId];
	
	for(var i = 0; i < array_length_1d(materialItemId); ++i)
	{
		var result = sPawn_Inven_RemoveItemById(
			materialItemId[i], materialCount[i]);
	
		assert_equal(result, 0);
	}
	
	var pos = sUtil_GetBuildingDeployPos(_x, _y, constructId);
	
	
	with(instance_create_layer(pos[0], pos[1], layer, oBlank))
	{
		m_ConstructId = constructId;
	
		instance_change(object, true);
	}
}

