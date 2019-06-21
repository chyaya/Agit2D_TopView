/// @description Dead
event_inherited();

sGameLogic_CreateItem(x, y, Item.Wood, random_range(4, 6));

if(random(100) <= 100)
	sGameLogic_CreateItem(x, y, Item.Apple, 1);