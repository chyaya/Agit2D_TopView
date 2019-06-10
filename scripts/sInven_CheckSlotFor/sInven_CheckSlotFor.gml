/// @description inv_check_slot_for(slot id, item id)
/// @param slot id
/// @param  item id

//Checks a specific slot for an item

var inven = argument0;
var itemPos = argument1;
var itemId = argument2;

var inv = inven[|Inven.ItemIds];

if inv[|itemPos] = itemId {
	return true
} else {
	return false
}
