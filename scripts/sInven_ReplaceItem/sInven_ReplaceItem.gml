var inven = argument0;
var itemPos = argument1;
var itemId = argument2;
var itemCount = argument3;

var inv = inven[|Inven.ItemIds];
var inv_count = inven[|Inven.ItemCounts];

inv[|itemPos] = itemId;
inv_count[|itemPos] = itemCount;