event_inherited();

sGameLogic_CreateItem(x, y, Item.Stone, random_range(3, 4));

if(random(100) <= 15)
	sGameLogic_CreateItem(x, y, Item.Coal, 1);