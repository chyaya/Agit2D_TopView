var inven = argument0;
var itemPos = argument1;
var itemCount = argument2;

var inv = inven[|Inven.ItemIds];
var inv_count = inven[|Inven.ItemCounts];

if(itemPos == 0)
	return itemCount;

var itemId = inv[|itemPos];

if(itemId == 0)
	return itemCount;
	
while(inv_count[|itemPos] > 0 && itemCount > 0)
{
	//if(global.Item_OnAddOrRemove[itemId] != noone)
	//	script_execute(global.Item_OnAddOrRemove[itemId], self, -1);
		
	inv_count[|itemPos] -= 1;
	itemCount -= 1;
}
	
	
assert_greater_than_or_equal(inv_count[|itemPos], 0);
	
if(inv_count[|itemPos] == 0)
	inv[|itemPos] = 0;
			
return 0;