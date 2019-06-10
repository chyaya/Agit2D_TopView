var inven = argument0;
var itemPos = argument1;

var inv = inven[|Inven.ItemIds];

if(itemPos == 0)
	return;

var itemId = inv[|itemPos];
if(itemId == 0)
	return;
	
if(sInven_RemoveItemByPos(inven, itemPos, 1) == 0)
{
	if(global.Item_OnUse[itemId] != noone)
		script_execute(global.Item_OnUse[itemId], self, itemId);
}