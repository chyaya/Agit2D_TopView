// Inherit the parent event
event_inherited();

sGameLogic_CreateItem(x, y, Item.RobotPart, random_range(1, 3));

if(random(100) <= 30)
	{
	sGameLogic_CreateItem(x, y, Item.RobotBlackbox, 3);
	}
	
if(random(100) <= 100)
	{
	sGameLogic_CreateItem(x, y, Item.Aluminium, 6);
	}
	