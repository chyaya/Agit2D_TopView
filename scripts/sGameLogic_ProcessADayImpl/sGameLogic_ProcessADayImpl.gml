//var playerPos = sGameLogic_FindSpawnPos();

//if(instance_number(oPlayer) > 0)
//{
//	oPlayer.x = playerPos[0];
//	oPlayer.y = playerPos[1];
//}

with(oTree)
{
	if(image_xscale < 2)
	{
		image_xscale += 0.5;	
		image_yscale += 0.5;
	}
}


var nTree = instance_number(oTree);
var nSpawnTree = clamp(50 - nTree, 0, 5);

repeat(nSpawnTree)
{
	with(sGameLogic_SpawnObject("Instances", oTree))
	{
		image_xscale = 0.1;
		image_yscale = 0.1;
	}
}


var nRobot = instance_number(oRobot);
var nSpawnRobot = clamp(12 - nRobot, 0, 3);

repeat(nSpawnRobot)
{
	sGameLogic_SpawnObject("Instances", oRobot);
}