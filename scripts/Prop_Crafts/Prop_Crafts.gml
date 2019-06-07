gml_pragma("global", "Prop_Crafts();");

var craftId = 0;

Prop_AddCraft(craftId++, noone, "", noone, [], []);

Prop_AddCraft(craftId++, sprBonfire, "모닥불", noone, [ItemType.Wood], [1]);
Prop_AddCraft(craftId++, sprWorkbench, "작업대", oWorkbench, [ItemType.Wood], [2]);
Prop_AddCraft(craftId++, sprAnvil, "용광로", noone, [ItemType.Stone], [2]);
Prop_AddCraft(craftId++, sprHouse, "축성연구소", noone, [ItemType.Wood, ItemType.Iron], [10, 3]);
