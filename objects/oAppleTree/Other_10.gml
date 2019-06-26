/// @description Dead
event_inherited();

sGameLogic_CreateItem(x, y, Item.Apple, random_range(1, 3));

if(random(100) <= 100)
	sGameLogic_CreateItem(x, y, Item.Wood, random_range(1, 3));