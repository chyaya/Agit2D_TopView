var pawn = argument0;
var inven = argument1;
var itemPos = argument2;
var num = argument3;

var itemId = sInven_GetItemId(inven, itemPos);

var value = global.Item_UserParam[itemId]*num;
sInven_AddUsableSlotNum(inven, value);

var noti = "InvenSlot" + (sign(value) >= 0 ? "+" : "") + string(value);
sUtil_CreateNotify(pawn.x, pawn.y, noti, 0, -30);
