gml_pragma("global", "sProp_Items();");

enum Item
{
	NONE,
	
	Wood,
	Stone,
	Iron,
	Apple,

	WoodenTool,
	CopperTool,
	
	MAX
}

inv_create_item(Item.NONE, spr_no_item, "", 0, "", noone, noone, 0); //Don't remove this one!

inv_create_item(Item.Wood, sprWood, "통나무", 100, "나무야 미안", noone, noone, 0);
inv_create_item(Item.Stone, sprStone, "돌", 100, "돌맹이", noone, noone, 0);
inv_create_item(Item.Iron, sprIron, "금속", 100, "로버트 다우니 주니어", noone, noone, 0);
inv_create_item(Item.Apple, sprApple, "사과", 10, "생명력 + 10", sItem_Portion_OnUse, noone, 10);
inv_create_item(Item.WoodenTool, sprWeapon, "나무도구", 10, "나무로 만든 채집 도구", noone, noone, 10);
inv_create_item(Item.CopperTool, sprWeapon, "구리도구", 10, "구리로 만든 채집 도구", noone, noone, 10);
