var inven = argument0;
var itemPos = argument1;
var _x = argument2;
var _y = argument3;

var inv = inven[|Inven.ItemIds];
var inv_count = inven[|Inven.ItemCounts];
var total_slots = inven[|Inven.TotalSlotNumber];

if(itemPos == 0)
	return;
	
var itemId = inv[|itemPos];

if(itemId == 0)
	return;
	
var itemCount = inv_count[|itemPos];
assert_not_equal(itemCount, 0);

if(sInven_RemoveItemByPos(inven, itemPos, itemCount) != 0)
	return;
	
sGameLogic_CreateItem(_x, _y, itemId);