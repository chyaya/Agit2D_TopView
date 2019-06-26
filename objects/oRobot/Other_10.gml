// Inherit the parent event
event_inherited();

sGameLogic_CreateItem(x, y, Item.RobotPart, random_range(1, 3));


if(random(100) <= 15)
	{
	sGameLogic_CreateItem(x, y, Item.RobotBlackbox, 1);
	}
	
	
if(random(100) <= 30)
	{
	sGameLogic_CreateItem(x, y, Item.Aluminium, 4);
	}
	