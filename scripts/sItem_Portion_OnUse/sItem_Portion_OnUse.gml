var pawn = argument0;
var inven = argument1;
var itemPos = argument2;

var itemId = sInven_GetItemId(inven, itemPos);

var valueUp = global.Item_UserParam[itemId];
pawn.m_CurHealth += valueUp;
pawn.m_CurHealth = min(pawn.m_CurHealth, pawn.m_MaxHealth);
sUtil_CreateNotify(pawn.x, pawn.y, "Health+" + string(valueUp), 0, -30);
