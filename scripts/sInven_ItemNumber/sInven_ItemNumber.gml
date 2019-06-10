var inven = argument0;
var itemId = argument1;

var inv = inven[|Inven.ItemIds];
var inv_count = inven[|Inven.ItemCounts];
var total_slots = inven[|Inven.TotalSlotNumber];

var count = 0;

for (var i = 1; i <= total_slots; ++i) 
{
   if (inv[|i] == itemId)
   {
		count += inv_count[|i];   
   }
}

return count;
