// Inherit the parent event
event_inherited();

sInven_Destroy(m_Inven_Bag);
m_Inven_Bag = noone;

sInven_Destroy(m_Inven_Equip);
m_Inven_Equip = noone;

ds_map_destroy(m_QuickSlotMap);
m_QuickSlotMap = noone;