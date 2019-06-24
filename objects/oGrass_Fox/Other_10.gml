/// @description Dead
event_inherited();

sGameLogic_CreateItem(x, y, Item.Fiber, random_range(2, 3));

if(random(100) <= 15)
{
	sGameLogic_CreateItem(x, y, Item.Fiber, 1);
		
}

if(random(100) <= 15)
{
	
	instance_create(x, y, oFox);
}
