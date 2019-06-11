gml_pragma("global", "sProp_Items();");

enum Item
{
	NONE,
	
	//자원 
	Wood,
	Stone,
	Coal,
	CopperStone,
	IronStone,
	Aluminium,
	Fiber,
	Meat,
	RoughLeather,
	RobotPart,
	RobotBlackbox,
	
	
	//굽기
	Fruit,
	BakedFruit,
	Apple,
	BakedApple,

	//작업대 
	WoodenTool,
	CopperTool,
	IronTool,
	
	WoodenSword,
	CopperSword,	
	IronSword,
	
	OldWaistBag,
	LeatherWaistBag,
	SturdyWaistBag,
	OldBackpack,
	LeatherBackpack,
	SturdyBackpack,
	
	TShirt,
	LeatherClothes,
	IronArmor,
	
	ClothShoes,
	SportsShoes,
	
	IronShell,
	ExplosionShell,
	
	
	//용광로 
	StoneBrick,
	CopperIngot,
	IronIngot,
	Pipe,
	
	//축성연구소 
	CastleWall,
	CastleDoor,
	DefenseTower,
	WatchTower,
	
	//세공소 
	Thread,
	Cotton,
	Paper,
	Leather,
	Bolt,
	GunPowder, 
	
	//정밀분쇄기
	Semiconductor,
	ElectricWire,
	
	
	//로봇 제조기 
	TypeAHangar,
	UltraLightArmorParts,
	LightArmorParts,
	HeavyArmorParts,
	HammerPunchParts,
	ForcepsHandParts,
	RocketLauncherParts,
	BipedWalkingParts,
	InfiniteTrackParts,
	FourleggedwalkingParts,
	
	
	MAX
}

inv_create_item(Item.NONE, spr_no_item, "", 0, "", noone, noone, 0); //Don't remove this one!

inv_create_item(Item.Wood, sprWood, "장작", 100, "통나무를 쪼개서 만든 장작", noone, noone, 0);
inv_create_item(Item.Stone, sprStone, "돌맹이", 100, "작고 동그란 돌맹이", noone, noone, 0);
inv_create_item(Item.Coal, sprCoal, "석탄", 100, "검은 석탄 덩어리", noone, noone, 0);
inv_create_item(Item.CopperStone, sprCopperStone, "구리", 100, "주황색의 무른 금속", noone, noone, 0);
inv_create_item(Item.IronStone, sprIronStone, "철광석", 100, "파란 빛이 감도는 금속", noone, noone, 0);
inv_create_item(Item.Aluminium, sprAluminium, "알루미늄 조각", 100, "콜라캔에서 얻은 금속", noone, noone, 0);
inv_create_item(Item.Fiber, sprFiber, "섬유", 100, "식물성 섬유", noone, noone, 0);
inv_create_item(Item.Meat, sprMeat, "고기", 100, "언제나 옳은 그것", noone, noone, 0);
inv_create_item(Item.RoughLeather, sprRoughLeather, "동물가죽", 100, "거친 동물 가죽", noone, noone, 0);
inv_create_item(Item.RobotPart, sprRobotParts, "로봇 부품", 100, "로봇에게서 떨어져나온 부품", noone, noone, 0);
inv_create_item(Item.RobotBlackbox, sprRobotBlackbox, "블랙박스", 100, "기계의 기록이 저장되어있다", noone, noone, 0);

inv_create_item(Item.Fruit, sprFruit, "열매", 100, "생명력 + 5", sItem_Portion_OnUse, noone, 5);
inv_create_item(Item.BakedFruit, sprBakedFruit, "구운 열매", 100, "생명력 + 10", sItem_Portion_OnUse, noone, 10);
inv_create_item(Item.Apple, sprApple, "사과", 10, "생명력 + 10", sItem_Portion_OnUse, noone, 10);
inv_create_item(Item.BakedApple, sprBakedApple, "구운 사과", 10, "생명력 + 20", sItem_Portion_OnUse, noone, 20);

inv_create_item(Item.WoodenTool, sprWoodenTool, "나무도구", 1, "채집 / 채광 공격력 1 증가합니다.", noone, noone, 1);
inv_create_item(Item.CopperTool, sprCopperTool, "구리도구", 1, "채집 / 채광 공격력 2 증가합니다.", noone, noone, 2);
inv_create_item(Item.IronTool, sprIronTool, "강철도구", 1, "채집 / 채광 공격력 3 증가합니다.", noone, noone, 3);

inv_create_item(Item.WoodenSword, sprWoodenSword, "나무 검", 1, "몬스터 공격력이 2 증가합니다.", noone, noone, 2);
inv_create_item(Item.CopperSword, sprCopperSword, "구리도구", 1, "몬스터 공격력이 4 증가합니다.", noone, noone, 4);
inv_create_item(Item.IronSword, sprIronSword, "강철도구", 1, "몬스터 공격력이 6 증가합니다.", noone, noone, 6);

inv_create_item(Item.OldWaistBag, sprOldWaistBag, "낡은 허리가방", 1, "가방 공간이 2칸 늘어납니다.", noone, noone, 2);
inv_create_item(Item.LeatherWaistBag, sprLeatherWaistBag, "가죽 허리가방", 1, "가방 공간이 3칸 늘어납니다.", noone, noone, 3);
inv_create_item(Item.SturdyWaistBag, sprSturdyWaistBag, "튼튼한 허리가방", 1, "가방 공간이 4칸 늘어납니다.", noone, noone, 4);
inv_create_item(Item.OldBackpack, sprOldBackpack, "낡은 배낭", 1, "가방 공간이 3칸 늘어납니다.", noone, noone, 3);
inv_create_item(Item.LeatherBackpack, sprLeatherBackpack, "가죽 배낭", 1, "가방 공간이 4칸 늘어납니다.", noone, noone, 4);
inv_create_item(Item.SturdyBackpack, sprSturdyBackpack, "튼튼한 배낭", 1, "가방 공간이 5칸 늘어납니다.", noone, noone, 5);

inv_create_item(Item.TShirt, sprTShirt, "면옷", 1, "방어력이 1 증가합니다.", noone, noone, 1);
inv_create_item(Item.LeatherClothes, sprLeatherClothes, "가죽옷", 1, "방어력이 3 증가합니다.", noone, noone, 3);
inv_create_item(Item.IronArmor, sprIronArmor, "철갑옷", 1, "방어력이 5 증가합니다.", noone, noone, 5);

inv_create_item(Item.ClothShoes, sprClothShoes, "천신발", 1, "이동속도가 20 증가합니다.", noone, noone, 20);
inv_create_item(Item.SportsShoes, sprSportsShoes, "운동화", 1, "이동속도가 30 증가합니다.", noone, noone, 30);

inv_create_item(Item.IronShell, sprIronShell, "철포탄", 20, "무거운 포탄입니다.", noone, noone, 0);
inv_create_item(Item.ExplosionShell, sprExplosionShell, "폭발탄", 20, "터지면 무서운 포탄입니다.", noone, noone, 0);

inv_create_item(Item.StoneBrick, sprStoneBrick, "벽돌", 50, "돌을 갈아 만든 벽돌입니다.", noone, noone, 0);
inv_create_item(Item.CopperIngot, sprCopperIngot, "구리주괴", 50, "구리를 녹여 만든 주괴입니다.", noone, noone, 0);
inv_create_item(Item.IronIngot, sprIronIngot, "철주괴", 50, "철을 녹여만든 주괴 입니다.", noone, noone, 0);
inv_create_item(Item.Pipe, sprPipe, "파이프", 50, "골라캔을 녹여서 나온 쇳물을 거푸집에 넣어 만든 파이프 입니다.", noone, noone, 0);

inv_create_item(Item.CastleWall, sprCastleWall, "성벽", 50, "성벽을 세울 수 있습니다.", noone, noone, 0);
inv_create_item(Item.CastleDoor, sprCastleDoor, "성문", 10, "성문을 세울 수 있습니다.", noone, noone, 0);
inv_create_item(Item.DefenseTower, sprDefenseTower, "방어타워", 10, "자동으로 적을 공격하는 방어 타워를 건설 할 수 있습니다.", noone, noone, 0);
inv_create_item(Item.WatchTower, sprWatchTower, "감시타워", 10, "주위에 방어타워의 사거리를 늘려주는 감시타워를 설치할 수 있습니다. ", noone, noone, 0);

inv_create_item(Item.Thread, sprThread, "실타래", 100, "잘 정재된 얇은 실타래", noone, noone, 0);
inv_create_item(Item.Cotton, sprCotton, "면", 100, "옷감으로 많이 선호하는 면조각", noone, noone, 0);
inv_create_item(Item.Paper, sprPaper, "종이", 100, "뭔가를 쓸 수 있는 종이", noone, noone, 0);
inv_create_item(Item.Leather, sprLeather, "가죽", 60, "부드럽게 연마된 가죽", noone, noone, 0);
inv_create_item(Item.Bolt, sprBolt, "철못", 200, "나무나 철판을 연결할 수 있는 못 ", noone, noone, 0);
inv_create_item(Item.GunPowder, sprGunPowder, "화약", 100, "강한 폭발력을 가진 화약, 단독으로 사용하기엔 위험하다.", noone, noone, 0);

inv_create_item(Item.Semiconductor, sprSemiconductor, "반도체", 200, "기계 부품으로 사용할 수 있는 반도체", noone, noone, 0);
inv_create_item(Item.ElectricWire, sprElectricWire, "전선", 100, "동력을 전달 할 수 있는 전기선", noone, noone, 0);


inv_create_item(Item.TypeAHangar, sprTypeAHangar, "TypeA 격납고", 100, "A형 로봇 보관함을 만들 수 있는 설계도", noone, noone, 0);
inv_create_item(Item.UltraLightArmorParts, sprUltraLightArmorParts, "초경량장갑부품", 100, "약하지만 가벼운 장갑", noone, noone, 0);
inv_create_item(Item.LightArmorParts, sprLightArmorParts, "경량장갑부품", 100, "벨런스가 잘 맞는 장갑", noone, noone, 0);
inv_create_item(Item.HeavyArmorParts, sprHeavyArmorParts, "중량장갑부품", 60, "무겁지만 튼튼한 장갑", noone, noone, 0);
inv_create_item(Item.HammerPunchParts, sprHammerPunchParts, "해머펀치부품", 200, "적을 밀쳐낼 수 있는 로봇팔", noone, noone, 0);
inv_create_item(Item.ForcepsHandParts, sprForcepsHandParts, "포획용팔부품", 100, "적을 잡을 수 있는 로봇팔", noone, noone, 0);
inv_create_item(Item.RocketLauncherParts, sprRocketLauncherParts, "로켓런처부품", 100, "로켓을 발사할 수 있는 런처, 팔 대신 장착 할 수 있다.", noone, noone, 0);
inv_create_item(Item.BipedWalkingParts, sprBipedWalkingParts, "이족보행부품", 60, "빠른 속도로 이동 할 수 있는 하단 파츠, 충격에 약하다.", noone, noone, 0);
inv_create_item(Item.InfiniteTrackParts, sprInfiniteTrackParts, "궤도부품", 200, "느리지만 안정적으로 움직일 수 있는 하단 파츠. ", noone, noone, 0);
inv_create_item(Item.FourleggedwalkingParts, sprFourleggedwalkingParts, "사족보행부품", 100, "충격에는 강하지만, 지형에 영향을 많이 받는다.", noone, noone, 0);










