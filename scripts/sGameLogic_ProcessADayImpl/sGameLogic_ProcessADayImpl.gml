var playerPos = sGameLogic_FindSpawnPos();

oPlayerController.m_PlayerObject.x = playerPos[0];
oPlayerController.m_PlayerObject.y = playerPos[1];

with(oTree)
{
	if(image_xscale < 2)
	{
		image_xscale += 0.5;	
		image_yscale += 0.5;
	}
}


var nTree = instance_number(oTree);
var nSpawnTree = clamp(50 - nTree, 0, 3);

repeat(nSpawnTree)
{
	with(sGameLogic_SpawnObject("Instances", oTree))
	{
		image_xscale = 0.1;
		image_yscale = 0.1;
	}
}