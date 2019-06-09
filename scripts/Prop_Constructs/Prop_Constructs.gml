gml_pragma("global", "Prop_Constructs();");

var constructId = 0;

Prop_AddConstruct(constructId++, noone, "", noone, [], []);

Prop_AddConstruct(constructId++, sprBonfire, "모닥불", oBonfire, [Item.Wood], [1]);
Prop_AddConstruct(constructId++, sprWorkbench, "작업대", oWorkbench, [Item.Wood], [2]);
//Prop_AddConstruct(constructId++, sprAnvil, "용광로", noone, [Item.Stone], [2]);
//Prop_AddConstruct(constructId++, sprHouse, "축성연구소", noone, [Item.Wood, Item.IronStone], [10, 3]);
