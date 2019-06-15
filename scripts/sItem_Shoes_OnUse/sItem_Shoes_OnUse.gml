var pawn = argument0;
var inven = argument1;
var itemPos = argument2;

var itemId = sInven_GetItemId(inven, itemPos);

//sInven_ReplaceItem(inven, 10, itemId, 1);
sInven_ReplaceItem(pawn.m_Inven_Equip, Equip.Shoes, itemId, 1); 