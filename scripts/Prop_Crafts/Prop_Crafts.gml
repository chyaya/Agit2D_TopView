gml_pragma("global", "Prop_Crafts();");

var craftId = 0;

Prop_AddCraft(craftId++, 0, []);

Prop_AddCraft(craftId++, "Wooden Wall", [ItemType.Wood, 1]);
Prop_AddCraft(craftId++, "Robot", [ItemType.Iron, 10]);
Prop_AddCraft(craftId++, "House", [ItemType.Wood, 10, ItemType.Iron, 3]);
