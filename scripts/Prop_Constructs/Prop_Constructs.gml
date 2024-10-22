gml_pragma("global", "Prop_Constructs();");

enum Construct
{
	NONE,
	
	SleepingBag,
	Bonfire,
	Workbench,
	Blast,
	BuildLap,
	kitchen,
	TinkerShop,
	RobotMixer,
	RobotMaker,
	CastleWall,
	CastleDoor,
	DefenseTower,
	WatchTower,
	GPSTransmitter,
	TypeAHangar,
	TestExosuit,
	RocketStep,
	
	MAX
}

Prop_AddConstruct(Construct.NONE, noone, "", noone, [], [], noone);

Prop_AddConstruct(Construct.SleepingBag, sprSleepingBag, "침낭", oSleepingBag, [Item.Fiber], [3], noone);
Prop_AddConstruct(Construct.Bonfire, sprBonfire, "모닥불", oBonfire, [Item.Wood, Item.Stone], [2, 1], noone);
Prop_AddConstruct(Construct.Workbench, sprWorkbench, "작업대", oWorkbench, [Item.Wood], [4], oBonfire);
Prop_AddConstruct(Construct.Blast, sprBlast, "용광로", oBlastFurnace, [Item.Stone, Item.Coal], [10, 3], oWorkbench);
Prop_AddConstruct(Construct.BuildLap, sprBuildLap, "축성연구소", oBuildLap, [Item.StoneBrick, Item.IronStone, Item.Aluminium], [5, 3, 4], oBlastFurnace);
Prop_AddConstruct(Construct.kitchen, sprKitchen, "부엌", oKitchen, [Item.Wood, Item.IronStone, Item.Aluminium], [5, 3, 4], oBlastFurnace);
Prop_AddConstruct(Construct.TinkerShop, sprTinkerShop, "세공소", oTinkerShop, [Item.Wood, Item.IronIngot], [6, 2], oBlastFurnace);
Prop_AddConstruct(Construct.RobotMixer, sprRobotMixer, "정밀분쇄기", oRobotMixer, [Item.IronIngot, Item.Aluminium, Item.Pipe], [2, 6, 2], oTinkerShop);
Prop_AddConstruct(Construct.RobotMaker, sprRobotMaker, "로봇제조기", oRobotMaker, [Item.Aluminium, Item.Semiconductor, Item.ElectricWire], [20, 5, 5], oRobotMixer);
Prop_AddConstruct(Construct.CastleWall, sprCastleWall, "성벽", oCastleWall , [Item.CastleWall], [1], oBuildLap);
Prop_AddConstruct(Construct.CastleDoor, sprCastleDoor, "성문", oCastleDoor, [Item.CastleDoor], [1], oBuildLap);
Prop_AddConstruct(Construct.DefenseTower, sprDefenseTower, "방어타워", oDefenseTower, [Item.DefenseTower], [1], oBuildLap);
Prop_AddConstruct(Construct.WatchTower, sprWatchTower, "감시타워", oWatchTower, [Item.WatchTower], [1], oBuildLap);
Prop_AddConstruct(Construct.GPSTransmitter,sprGPSTransmitter, "GPS 발신기", oGPSTransmitter, [Item.ElectricWire, Item.Semiconductor ], [1, 2], oRobotMaker);
//Prop_AddConstruct(Construct.TypeAHangar, sprTypeAHangar, "TypeA 로봇 보관함", oTypeAHangar, [Item.TypeAHangar], [1], oRobotMaker);
Prop_AddConstruct(Construct.TestExosuit, sprExosuitIdle, "테스트 엑소슈트", oExosuit, [Item.Aluminium], [1], noone);
Prop_AddConstruct(Construct.RocketStep, sprLaunchingPad, "로켓 발사대", oRocketStep, [Item.RocketEngine, Item.NavigationSystem, Item.Propellant], [1, 1, 1,], noone);








