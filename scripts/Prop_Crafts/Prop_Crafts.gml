gml_pragma("global", "Prop_Crafts();");

var craftId = 0;

Prop_AddCraft(craftId++, "", noone, [], []);

Prop_AddCraft(craftId++, "모닥불", noone, [ItemType.Wood], [1]);
Prop_AddCraft(craftId++, "작업대", oWorkbench, [ItemType.Wood], [2]);
Prop_AddCraft(craftId++, "용광로", noone, [ItemType.Stone], [2]);
Prop_AddCraft(craftId++, "축성연구소", noone, [ItemType.Wood, ItemType.Iron], [10, 3]);
