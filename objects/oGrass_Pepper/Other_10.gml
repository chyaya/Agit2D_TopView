/// @description Dead
event_inherited();

sGameLogic_CreateItem(x, y, Item.BlackPepper, random_range(3, 4));

if(random(100) <= 15)
{
	sGameLogic_CreateItem(x, y, Item.Fiber, 1);
		
}

if(random(100) <= 50)
{
	
	instance_create(x, y, oFox);
}
