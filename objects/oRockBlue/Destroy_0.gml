event_inherited();

sGameLogic_CreateItem(x, y, Item.IronStone, random_range(2, 3));

if(random(100) <= 15)
	sGameLogic_CreateItem(x, y, Item.Stone, 1);