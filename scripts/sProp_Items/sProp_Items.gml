enum ItemType
{
	NONE,
	
	Wood,
	Stone,
	Iron,
	Apple,
	
	MAX
}

inv_create_item(ItemType.NONE, spr_no_item, "", 0, "", noone, noone, 0); //Don't remove this one!

inv_create_item(ItemType.Wood, sprWood, "Wood", 100, "나무야 미안", noone, noone, 0);
inv_create_item(ItemType.Stone, sprStone, "Stone", 100, "돌맹이", noone, noone, 0);
inv_create_item(ItemType.Iron, sprIron, "Iron", 100, "그는 좋은 아이언이였습니다.", noone, noone, 0);
inv_create_item(ItemType.Apple, sprApple, "Apple", 10, "생명력 + 10", sItem_Portion_OnUse, noone, 10);
