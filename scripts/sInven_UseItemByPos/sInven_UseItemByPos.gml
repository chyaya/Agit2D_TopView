var inven = argument0;
var itemPos = argument1;

var inv = inven[|Inven.ItemIds];
var inv_count = inven[|Inven.ItemCounts];

if(itemPos == 0)
	return;

var itemId = inv[|itemPos];
if(itemId == 0)
	return;
	
if(inv_count[|itemPos] > 0)
{
	if(global.Item_OnUse[itemId] != noone)
		script_execute(global.Item_OnUse[itemId], self, inven, itemPos);
		
	var removeResult = sInven_RemoveItemByPos(inven, itemPos, 1)
	assert_equal(removeResult, 0);
}
