gml_pragma("global", "Prop_Crafts();");

enum Craft
{
	NONE,
	
	BakedFruit,
	BakedApple,
	
	WoodenTool,
	CopperTool,
	IronTool,
	
	MAX
}


Prop_AddCraft(Craft.NONE, noone, 0, [], []);

// Bonfire
Prop_AddCraft(Craft.BakedFruit, Item.BakedFruit, 3000, [Item.Fruit], [1]);
Prop_AddCraft(Craft.BakedApple, Item.BakedApple, 3000, [Item.Apple], [1]);

Prop_AddCraft(Craft.WoodenTool, Item.WoodenTool, 3000, [Item.Wood, Item.Stone], [1, 1]);
Prop_AddCraft(Craft.CopperTool, Item.CopperTool, 3000, [Item.Wood, Item.CopperStone], [1, 1]);
Prop_AddCraft(Craft.IronTool, Item.CopperTool, 3000, [Item.Wood, Item.CopperStone], [1, 1]);
