/// @description inv_get_first_slot_of(item id)
/// @param item id

//Returns the first slot id that holds a specific item id.

var inven = argument0;
var itemId = argument1;

var inv = inven[|Inven.ItemIds];
var total_slots = inven[|Inven.TotalSlotNumber];

var ii = 1
while (ii <= total_slots) {
   if inv[|ii]=itemId {return ii}
   ii++
}
return 0
