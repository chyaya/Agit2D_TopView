/// @description inv_add_item(itemid, number of items)
/// @param itemid
/// @param number of items

//Adds items to your inventory.

var ii = 1
var inven = argument0;
var itemId = argument1;
var itemCount = argument2;

var inv = inven[|Inven.ItemIds];
var inv_count = inven[|Inven.ItemCounts];
var total_slots = inven[|Inven.TotalSlotNumber];

while (ii <= total_slots) and itemCount > 0
{
	if(inv[|ii] == 0)
	{
		inv[|ii] = itemId;
		inv_count[|ii] = 0;
	}
	
	if(inv[|ii] == itemId && inv_count[|ii] < global.Item_MaxCount[itemId])
	{
		//if(global.Item_OnAddOrRemove[inv[|ii]] != noone)
		//	script_execute(global.Item_OnAddOrRemove[inv[|ii]], self, 1);
			
		inv_count[|ii] += 1;
		itemCount -= 1;
	}
	
    ii++
}

return itemCount;