gml_pragma("global", "Prop_Crafts();");

enum Craft
{
	NONE,
	
	WoodenTool,
	CopperTool,
	
	MAX
}


Prop_AddCraft(Craft.NONE, noone, [], []);

Prop_AddCraft(Craft.WoodenTool, Item.WoodenTool, [Item.Wood, Item.Stone], [1, 1]);
Prop_AddCraft(Craft.CopperTool, Item.CopperTool, [Item.Wood], [2]);
