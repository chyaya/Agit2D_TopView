gml_pragma("global", "sProp_Items();");

enum Item
{
	NONE,
	
	Wood,
	Stone,
	Coal,
	CopperStone,
	IronStone,
	Aluminium,
	Fiber,
	Meat,
	Leather,
	RobotPart,
	RobotBlackbox,
	
	Fruit,
	BakedFruit,
	Apple,
	BakedApple,

	WoodenTool,
	CopperTool,
	IronTool,
	
	MAX
}

inv_create_item(Item.NONE, spr_no_item, "", 0, "", noone, noone, 0); //Don't remove this one!

inv_create_item(Item.Wood, sprWood, "장작", 100, "통나무를 쪼개서 만든 장작", noone, noone, 0);
inv_create_item(Item.Stone, sprStone, "돌맹이", 100, "작고 동그란 돌맹이", noone, noone, 0);
inv_create_item(Item.Coal, sprCoal, "석탄", 100, "검은 석탄 덩어리", noone, noone, 0);
inv_create_item(Item.CopperStone, sprCopperStone, "구리", 100, "주황색의 무른 금속", noone, noone, 0);
inv_create_item(Item.IronStone, sprIronStone, "구리", 100, "파란 빛이 감도는 금속", noone, noone, 0);
inv_create_item(Item.Aluminium, sprAluminium, "알루미늄 조각", 100, "콜라캔에서 얻은 금속", noone, noone, 0);
inv_create_item(Item.Fiber, sprFiber, "섬유", 100, "식물성 섬유", noone, noone, 0);
inv_create_item(Item.Meat, sprMeat, "고기", 100, "언제나 옳은 그것", noone, noone, 0);
inv_create_item(Item.Leather, sprLeather, "동물가죽", 100, "질긴 가죽", noone, noone, 0);
inv_create_item(Item.RobotPart, sprRobotParts, "로봇 부품", 100, "로봇에게서 떨어져나온 부품", noone, noone, 0);
inv_create_item(Item.RobotBlackbox, sprRobotBlackbox, "블랙박스", 100, "기계의 기록이 저장되어있다", noone, noone, 0);

inv_create_item(Item.Fruit, sprFruit, "열매", 100, "생명력 + 5", sItem_Portion_OnUse, noone, 5);
inv_create_item(Item.BakedFruit, sprBakedFruit, "구운 열매", 100, "생명력 + 10", sItem_Portion_OnUse, noone, 10);
inv_create_item(Item.Apple, sprApple, "사과", 10, "생명력 + 10", sItem_Portion_OnUse, noone, 10);
inv_create_item(Item.BakedApple, sprBakedApple, "구운 사과", 10, "생명력 + 20", sItem_Portion_OnUse, noone, 20);

inv_create_item(Item.WoodenTool, sprWeapon, "나무도구", 10, "나무로 만든 채집 도구", noone, noone, 10);
inv_create_item(Item.CopperTool, sprWeapon, "구리도구", 10, "구리로 만든 채집 도구", noone, noone, 10);
inv_create_item(Item.IronTool, sprWeapon, "강철도구", 10, "강철로 만든 채집 도구", noone, noone, 10);
