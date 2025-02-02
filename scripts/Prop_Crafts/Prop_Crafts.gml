gml_pragma("global", "Prop_Crafts();");

enum Craft
{
	NONE,
	
	//굽기 
	BakedFruit,
	BakedApple,
	BakedMeet,
	
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
	
	//부엌
	FruitFry,
	AppleFry,
	Salad,
	FruitMochi,
	AppleBread,
	Cheese,
	FriedEgg,
	boiledEgg,
	EggFriedRice,
	MeatStew,
	Steak,
	
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


Prop_AddCraft(Craft.NONE, noone, 0, [], [], noone);

// Bonfire
Prop_AddCraft(Craft.BakedFruit, Item.BakedFruit, 3000, [Item.Fruit], [1], noone);
Prop_AddCraft(Craft.BakedApple, Item.BakedApple, 3000, [Item.Apple], [1], noone);
Prop_AddCraft(Craft.BakedMeet, Item.BakedMeat, 3000, [Item.Meat], [1], noone);

Prop_AddCraft(Craft.WoodenTool, Item.WoodenTool, 3000, [Item.Wood, Item.Stone], [1, 1], noone);
Prop_AddCraft(Craft.CopperTool, Item.CopperTool, 3000, [Item.Wood, Item.CopperStone], [1, 1], noone);
Prop_AddCraft(Craft.IronTool, Item.IronTool, 3000, [Item.Wood, Item.IronIngot], [1, 1], noone);

Prop_AddCraft(Craft.WoodenSword,Item.WoodenSword, 3000, [Item.Wood], [3], noone);
Prop_AddCraft(Craft.CopperSword,Item.CopperSword, 3000, [Item.Wood, Item.CopperIngot], [2, 1], noone);
Prop_AddCraft(Craft.IronSword, Item.IronSword, 3000, [Item.Wood, Item.IronIngot], [1, 1], noone);

Prop_AddCraft(Craft.OldWaistBag, Item.OldWaistBag, 5000, [Item.Cotton, Item.Thread], [1, 2], noone);
Prop_AddCraft(Craft.LeatherWaistBag, Item.LeatherWaistBag, 5000, [Item.Leather, Item.Thread], [2, 3], noone);
Prop_AddCraft(Craft.SturdyWaistBag, Item.SturdyWaistBag, 5000, [Item.Aluminium, Item.Leather, Item.Thread], [3, 2, 3], noone);
Prop_AddCraft(Craft.OldBackpack, Item.OldBackpack, 5000, [Item.Cotton, Item.Thread], [3, 4], noone);
Prop_AddCraft(Craft.LeatherBackpack, Item.LeatherBackpack, 5000, [Item.Leather, Item.Thread], [3, 4], noone);
Prop_AddCraft(Craft.SturdyBackpack, Item.SturdyBackpack, 5000, [Item.Aluminium, Item.Leather, Item.Thread], [4, 3, 4], noone);

Prop_AddCraft(Craft.TShirt, Item.TShirt, 5000, [Item.Cotton, Item.Thread], [4, 3], noone);
Prop_AddCraft(Craft.LeatherClothes, Item.LeatherClothes, 5000, [Item.Leather, Item.Thread], [5, 4], noone);
Prop_AddCraft(Craft.IronArmor, Item.IronArmor, 5000, [Item.IronIngot, Item.Leather, Item.Thread], [3, 3, 4], noone);

Prop_AddCraft(Craft.ClothShoes, Item.ClothShoes, 5000, [Item.Cotton, Item.Thread], [5, 3], noone);
Prop_AddCraft(Craft.SportsShoes, Item.SportsShoes, 5000, [Item.Leather, Item.Cotton, Item.Thread], [4, 6, 4], noone);

Prop_AddCraft(Craft.IronShell, Item.IronShell, 5000, [Item.IronIngot, Item.GunPowder], [1, 1], noone);
Prop_AddCraft(Craft.ExplosionShell, Item.ExplosionShell, 5000, [Item.IronStone, Item.GunPowder, Item.Coal], [1, 3, 1], noone);

Prop_AddCraft(Craft.StoneBrick, Item.StoneBrick, 1000, [Item.Stone], [2], noone);
Prop_AddCraft(Craft.CopperIngot, Item.CopperIngot, 1000, [Item.CopperStone, Item.Coal], [1, 1], noone);
Prop_AddCraft(Craft.IronIngot, Item.IronIngot, 1000, [Item.IronStone, Item.Coal], [1, 1], noone);
Prop_AddCraft(Craft.Pipe, Item.Pipe, 1000, [Item.Aluminium, Item.Coal], [2, 1], noone);

Prop_AddCraft(Craft.CastleWall, Item.CastleWall, 10000, [Item.StoneBrick, Item.IronStone], [1, 1], noone);
Prop_AddCraft(Craft.CastleDoor, Item.CastleDoor, 10000, [Item.Wood, Item.IronIngot, Item.Bolt], [4, 1, 10], noone);
Prop_AddCraft(Craft.DefenseTower, Item.DefenseTower, 10000, [Item.StoneBrick, Item.IronIngot, Item.IronShell], [4, 2, 3], noone);
Prop_AddCraft(Craft.WatchTower, Item.WatchTower, 10000, [Item.StoneBrick, Item.IronIngot, Item.Semiconductor], [4, 3, 2], noone);

Prop_AddCraft(Craft.FruitFry, Item.FruitFry, 10000, [Item.Fruit, Item.CookingOil], [4, 1], noone);
Prop_AddCraft(Craft.AppleFry, Item.AppleFry, 10000, [Item.Apple, Item.Vegetable, Item.CookingOil], [3, 1, 1], noone);
Prop_AddCraft(Craft.Salad, Item.Salad, 10000, [Item.Vegetable, Item.Fruit, Item.Rocksalt, Item.CookingOil], [2, 2, 1, 1], noone);
Prop_AddCraft(Craft.FruitMochi, Item.FruitMochi, 10000, [Item.Fruit, Item.Apple, Item.Grain, Item.Water], [3, 3, 3, 2], noone);
Prop_AddCraft(Craft.AppleBread, Item.AppleBread, 10000, [Item.Apple, Item.Grain, Item.Milk, Item.Water], [4, 3, 3, 2], noone);
Prop_AddCraft(Craft.Cheese, Item.Cheese, 10000, [Item.Milk, Item.Rocksalt], [4, 1], noone);
Prop_AddCraft(Craft.FriedEgg, Item.FriedEgg, 10000, [Item.Egg, Item.Rocksalt, Item.CookingOil], [1, 2, 1], noone);
Prop_AddCraft(Craft.boiledEgg, Item.boiledEgg, 10000, [Item.Egg, Item.Water, Item.Rocksalt], [2, 4, 1], noone);
Prop_AddCraft(Craft.EggFriedRice, Item.EggFriedRice, 10000, [Item.Grain, Item.Egg, Item.Rocksalt, Item.CookingOil], [3, 1, 1, 1], noone);
Prop_AddCraft(Craft.MeatStew, Item.MeatStew, 10000, [Item.Meat, Item.BlackPepper, Item.Water], [2, 1, 3], noone);
Prop_AddCraft(Craft.Steak, Item.Steak, 10000, [Item.Meat, Item.BlackPepper, Item.Rocksalt, Item.CookingOil], [2, 1, 1, 1], noone);

Prop_AddCraft(Craft.Thread, Item.Thread, 1000, [Item.Fiber, Item.Stone], [1, 1], noone);
Prop_AddCraft(Craft.Cotton, Item.Cotton, 1000, [Item.Fiber, Item.Aluminium, Item.Thread], [1, 1, 1], noone);
Prop_AddCraft(Craft.Paper, Item.Paper, 1000, [Item.Wood, Item.Fiber], [1, 1], noone);
Prop_AddCraft(Craft.Leather, Item.Leather, 1000, [Item.RoughLeather], [1], noone);
Prop_AddCraft(Craft.Bolt, Item.Bolt, 1000, [Item.IronStone, Item.Aluminium], [1, 2], noone);
Prop_AddCraft(Craft.GunPowder, Item.GunPowder, 1000, [Item.Stone, Item.Coal], [4, 2], noone);

Prop_AddCraft(Craft.Semiconductor, Item.Semiconductor, 2000, [Item.RobotBlackbox], [1], noone);
Prop_AddCraft(Craft.ElectricWire, Item.ElectricWire, 2000, [Item.RobotPart], [1], noone);

Prop_AddCraft(Craft.TypeAHangar, Item.TypeAHangar, 5000, [Item.Paper, Item.Coal], [1, 1], noone);
Prop_AddCraft(Craft.UltraLightArmorParts, Item.UltraLightArmorParts, 5000, [Item.IronIngot, Item.Semiconductor, Item.ElectricWire], [1, 1, 2], noone);
Prop_AddCraft(Craft.LightArmorParts, Item.LightArmorParts, 5000, [Item.IronIngot, Item.Semiconductor, Item.ElectricWire], [2, 3, 2], noone);
Prop_AddCraft(Craft.HeavyArmorParts, Item.HeavyArmorParts, 5000, [Item.IronIngot, Item.Semiconductor, Item.ElectricWire], [4, 2, 2], noone);
Prop_AddCraft(Craft.HammerPunchParts, Item.HammerPunchParts, 5000, [Item.IronIngot, Item.Pipe, Item.ElectricWire], [2, 3, 2], noone);
Prop_AddCraft(Craft.ForcepsHandParts, Item.ForcepsHandParts, 5000, [Item.IronIngot, Item.Pipe, Item.ElectricWire], [4, 2, 3], noone);
Prop_AddCraft(Craft.RocketLauncherParts, Item.RocketLauncherParts, 5000, [Item.ExplosionShell, Item.Pipe, Item.ElectricWire], [5, 3, 3], noone);
Prop_AddCraft(Craft.BipedWalkingParts, Item.BipedWalkingParts, 5000, [Item.CopperIngot, Item.IronIngot, Item.ElectricWire], [2, 2, 4], noone);
Prop_AddCraft(Craft.InfiniteTrackParts, Item.InfiniteTrackParts, 5000, [Item.CopperIngot, Item.IronIngot, Item.ElectricWire], [5, 5, 4], noone);
Prop_AddCraft(Craft.FourleggedwalkingParts, Item.FourleggedwalkingParts, 5000, [Item.Pipe, Item.IronIngot, Item.ElectricWire], [5, 4, 4], noone);






