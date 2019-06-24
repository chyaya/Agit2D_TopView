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
		var result = sInven_RemoveItemById(m_Inven_Bag,
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

for(var i = 1; i < array_length_1d(global.Construct_Require_Building); ++i)
{
	if(global.Construct_Require_Building[i] == object)
	{
		if(false == m_ConstructVisible[i])
		{
			m_ConstructVisible[i] = true;
			
			with(m_PlayerObject)
			{	
				sUtil_CreateNotify(x, y, global.Construct_Text[i], 0, -30);
			}
		}
	}
}

sGameLogic_AfterConstruct(constructId);