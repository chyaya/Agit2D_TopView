/// @description Dead
event_inherited();

sGameLogic_CreateItem(x, y, Item.Stone, random_range(3, 5));

if(random(100) <= 20)
	sGameLogic_CreateItem(x, y, Item.Coal, 2);