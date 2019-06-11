gml_pragma("global", "Prop_Constructs();");

var constructId = 0;

Prop_AddConstruct(constructId++, noone, "", noone, [], []);

Prop_AddConstruct(constructId++, sprBonfire, "모닥불", oBonfire, [Item.Wood, Item.Stone], [2, 1]);
Prop_AddConstruct(constructId++, sprWorkbench, "작업대", oWorkbench, [Item.Wood], [4]);
Prop_AddConstruct(constructId++, sprBlast, "용광로", oBlastFurnace, [Item.Stone, Item.Coal], [10, 3]);
Prop_AddConstruct(constructId++, sprBuildLap, "축성연구소", oBuildLap, [Item.StoneBrick, Item.IronStone, Item.Aluminium], [5, 3, 4]);
Prop_AddConstruct(constructId++, sprTinkerShop, "세공소", oTinkerShop, [Item.Wood, Item.IronIngot], [6, 2]);
Prop_AddConstruct(constructId++, sprRobotMixer, "정밀분쇄기", oRobotMixer, [Item.IronIngot, Item.Aluminium, Item.Pipe], [2, 6, 2]);
Prop_AddConstruct(constructId++, sprRobotMaker, "로봇제조기", oRobotMaker, [Item.Aluminium, Item.Semiconductor, Item.ElectricWire], [20, 5, 5]);
Prop_AddConstruct(constructId++, sprCastleWall, "성벽", oCastleWall , [Item.CastleWall], [1]);
Prop_AddConstruct(constructId++, sprCastleDoor, "성문", oCastleDoor, [Item.CastleDoor], [1]);
Prop_AddConstruct(constructId++, sprDefenseTower, "방어타워", oDefenseTower, [Item.DefenseTower], [1]);
Prop_AddConstruct(constructId++, sprWatchTower, "감시타워", oWatchTower, [Item.WatchTower], [1]);
//Prop_AddConstruct(constructId++, sprWorkbench, "TypeA 로봇 보관함", oTypeAHangar, [Item.TypeAHangar], [1]);




