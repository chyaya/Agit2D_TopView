var inven = argument0;
var itemId = argument1;
var itemCount = argument2;

var inv = inven[|Inven.ItemIds];
var inv_count = inven[|Inven.ItemCounts];
var total_slots = inven[|Inven.TotalSlotNumber];

if(itemId == 0)
	return itemCount;

for(var i = total_slots; i > 0; --i)
{
	if(inv[|i] != itemId)
		continue;
		
	if(inv_count[|i] <= itemCount)
	{
		itemCount -= inv_count[|i];
		inv_count[|i] = 0;
		inv[|i] = 0;
	}
	else
	{
		inv_count[|i] -= itemCount;	
		itemCount = 0;
		break;
	}
	
	assert_greater_than_or_equal(inv_count[|i], 0);
}

return itemCount;