/// @description Dead
event_inherited();

sGameLogic_CreateItem(x, y, Item.RoughLeather, random_range(2, 3));

if(random(100) <= 5)
	sGameLogic_CreateItem(x, y, Item.Meat, 1);