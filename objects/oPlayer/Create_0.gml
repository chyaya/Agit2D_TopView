// Inherit the parent event
event_inherited();

m_TargetOffsetX = 0;
m_TargetOffsetY = 0;

m_Inven_Equip = sInven_Create(3);
assert_equal(sInven_GetTotalSlotNum(m_Inven_Equip), 3);

m_Inven_Bag = sInven_Create(30);
assert_equal(sInven_GetTotalSlotNum(m_Inven_Bag), 30);
