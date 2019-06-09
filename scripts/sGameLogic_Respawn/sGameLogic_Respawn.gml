var object = argument0;
var nRespawn = argument1;
var nMax = argument2;

var nCurrent = instance_number(object);
nRespawn = clamp(nRespawn, 0, nMax - nCurrent);

repeat(nRespawn)
{
	sGameLogic_SpawnObject("Instances", object);
}