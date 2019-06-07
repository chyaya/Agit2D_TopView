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

inv_create_item(ItemType.Wood, sprWood, "통나무", 100, "나무야 미안", noone, noone, 0);
inv_create_item(ItemType.Stone, sprStone, "돌", 100, "돌맹이", noone, noone, 0);
inv_create_item(ItemType.Iron, sprIron, "금속", 100, "로버트 다우니 주니어", noone, noone, 0);
inv_create_item(ItemType.Apple, sprApple, "사과", 10, "생명력 + 10", sItem_Portion_OnUse, noone, 10);
