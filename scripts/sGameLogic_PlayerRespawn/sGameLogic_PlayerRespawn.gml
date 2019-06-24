var startX = room_width/2, startY = room_height/2;

with(oPlayerController)
{
	var sleepingBag = instance_nearest(m_PlayerObjectX, m_PlayerObjectY, oSleepingBag);

	if(sleepingBag != noone)
	{
		startX = sleepingBag.x;
		startY = sleepingBag.y;
	}
}


var playerObj = instance_create_layer(startX, startY, "Instances", oBlank);

with(playerObj)
{

	instance_change(oPlayer, true);
}

with(oPlayerController)
{
	sPlayerController_SetPlayer(playerObj);
}