var pawn = argument0;
var num = argument1;

var value = num*5;
pawn.m_MaxHealth += value;

var noti = "Max Health" + (sign(value) >= 0 ? "+" : "") + string(value);
sUtil_CreateNotify(pawn.x, pawn.y, noti, 0, -30);