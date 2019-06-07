var _x = argument0;
var _y = argument1;
var craftId = argument2;

var object = global.Craft_Result[craftId];

if(object != noone)
{
	var pos = sUtil_GetBuildingDeployPos(_x, _y, craftId);
	
	instance_create_layer(pos[0], pos[1], layer, object);
}