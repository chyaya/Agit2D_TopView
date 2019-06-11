/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

var len = 16;
m_TargetOffsetX = lengthdir_x(len, m_TargetAngle);
m_TargetOffsetY = lengthdir_y(len, m_TargetAngle) - sprite_height/2;


for(var i = 0; i < Equip.MAX; ++i)
{
	var lastItemId = m_LastEquipItemIds[i];
	var curItemId = sInven_GetItemId(m_Inven_Equip, i);
	
	if(lastItemId != curItemId)
	{
		if(global.Item_OnActive[lastItemId] != noone)
		{
			script_execute(global.Item_OnActive[lastItemId], self, m_Inven_Equip, i, -1);
		}
		
		if(global.Item_OnActive[curItemId] != noone)
		{
			script_execute(global.Item_OnActive[curItemId], self, m_Inven_Equip, i, +1);
		}
		
		m_LastEquipItemIds[i] = curItemId;
	}
}