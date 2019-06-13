var pawn = argument0;
var itemId = argument1;
var num = argument2;

var value = global.Item_UserParam[itemId]*num;
pawn.m_CombatDamage += value;

var noti = "Combat Damage" + (sign(value) >= 0 ? "+" : "") + string(value);
sUtil_CreateNotify(pawn.x, pawn.y, noti, 0, -30);
