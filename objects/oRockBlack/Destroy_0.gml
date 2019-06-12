event_inherited();

sGameLogic_CreateItem(x, y, Item.Coal, random_range(4, 6));

if(random(100) <= 15)
	sGameLogic_CreateItem(x, y, Item.Stone, 2);