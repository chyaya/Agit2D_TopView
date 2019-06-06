enum ItemType
{
	NONE,
	
	Wood,
	Stone,
	Iron,
	Apple,
	
	MAX
}

inv_create_item(0, spr_no_item, "", 0, noone, noone); //Don't remove this one!

inv_create_item(ItemType.Wood, sprWood, "Wood", 100, noone, noone);
inv_create_item(ItemType.Stone, sprStone, "Stone", 100, noone, noone);
inv_create_item(ItemType.Iron, sprIron, "Iron", 100, noone, noone);
inv_create_item(ItemType.Apple, sprApple, "Apple", 10, noone, noone);
