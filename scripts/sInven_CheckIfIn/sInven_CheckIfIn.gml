/// @description inv_check_if_in(item_id)
/// @param item_id

//Checks your inventory for an item.

var inven = argument0;
var itemId = argument1;

var inv = inven[|Inven.ItemIds];
var total_slots = inven[|Inven.TotalSlotNumber];

var ii = 1
while (ii <= total_slots)  {
   if inv[|ii]=itemId {return true}
   ii++
}
return false
