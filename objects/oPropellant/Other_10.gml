/// @description Dead
event_inherited();

sGameLogic_CreateItem(x, y, Item.Propellant, random_range(1, 1));

if(random(100) <= 0)
	sGameLogic_CreateItem(x, y, Item.Fiber, 1);