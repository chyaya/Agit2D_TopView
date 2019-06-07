gml_pragma("global", "Prop_Crafts();");

var craftId = 0;

Prop_AddCraft(craftId++, 0, []);

Prop_AddCraft(craftId++, "모닥불", [ItemType.Wood, 1]);
Prop_AddCraft(craftId++, "작업대", [ItemType.Wood, 2]);
Prop_AddCraft(craftId++, "용광로", [ItemType.Stone, 2]);
Prop_AddCraft(craftId++, "축성연구소", [ItemType.Wood, 10, ItemType.Iron, 3]);
