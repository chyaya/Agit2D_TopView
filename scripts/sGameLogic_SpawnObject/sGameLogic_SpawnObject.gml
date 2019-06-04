var _layer = argument0;
var object = argument1;

var randPos = sGameLogic_FindSpawnPos();
var instance = noone;

with(instance_create_layer(randPos[0], randPos[1], _layer, object))
{
	instance = self;
}

return instance;