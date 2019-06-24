var playerObj = instance_create_layer(room_width/2, room_height/2, "Instances", oBlank);

with(playerObj)
{

	instance_change(oPlayer, true);
}

with(oPlayerController)
{
	sPlayerController_SetPlayer(playerObj);
}