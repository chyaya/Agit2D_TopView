///@desc create inventory to object
///@param total slot size
///@param 

var total_slots = argument0;

enum Inven
{
	SlotSprite,
	SlotSelected,
	Selected,
	TotalSlotNumber,
	
	ItemIds,
	ItemCounts,
};


var inventory = ds_list_create();

inventory[|Inven.SlotSprite] = spr_slot;
inventory[|Inven.SlotSelected] = spr_selected_slot;
inventory[|Inven.Selected] = 1;
inventory[|Inven.TotalSlotNumber] = total_slots;

var itemIds = ds_list_create();
var itemCounts = ds_list_create();

var p = 1
while p <= total_slots
{
    itemIds[|p] = 0;
	itemCounts[|p] = 0;
    p++;
}

inventory[|Inven.ItemIds] = itemIds;
inventory[|Inven.ItemCounts] = itemCounts;

assert_equal(ds_list_size(inventory[|Inven.ItemIds]), inventory[|Inven.TotalSlotNumber] + 1);
assert_equal(ds_list_size(inventory[|Inven.ItemCounts]), inventory[|Inven.TotalSlotNumber] + 1);

return inventory;