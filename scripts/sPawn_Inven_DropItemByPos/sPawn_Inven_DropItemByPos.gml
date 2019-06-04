var itemPos = argument0;
var _x = argument1;
var _y = argument2;

if(itemPos == 0)
	return;
	
var itemId = inv[itemPos];

if(itemId == 0)
	return;
	
var itemCount = inv_count[itemPos];
assert_not_equal(itemCount, 0);

if(sPawn_Inven_RemoveItemByPos(itemPos, itemCount) != 0)
	return;

with(instance_create_layer(_x, _y, "Props", oBlank))
{
	m_ItemId = itemId;

	instance_change(oItem, true);
}