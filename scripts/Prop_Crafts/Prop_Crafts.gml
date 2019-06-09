gml_pragma("global", "Prop_Crafts();");

enum Craft
{
	NONE,
	
	WoodenTool,
	CopperTool,
	
	MAX
}


Prop_AddCraft(Craft.NONE, noone, 0, [], []);

Prop_AddCraft(Craft.WoodenTool, Item.WoodenTool, 3000, [Item.Wood, Item.Stone], [1, 1]);
Prop_AddCraft(Craft.CopperTool, Item.CopperTool, 5000, [Item.Wood], [2]);
