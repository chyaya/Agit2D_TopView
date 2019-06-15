// Inherit the parent event
event_inherited();

m_TargetOffsetX = 0;
m_TargetOffsetY = 0;


enum Equip
{
	NONE,
	
	Armor,
	Shoes,
	Bag,
	
	MAX
}

m_EquipName = [
	"",
	"방어구",
	"신발",
	"가방",
	"",
];

m_Inven_Equip = sInven_Create(Equip.MAX - 1, Equip.MAX - 1);
assert_equal(sInven_GetTotalSlotNum(m_Inven_Equip), Equip.MAX - 1);
sInven_SetSelectedPos(m_Inven_Equip, 0);	// 장착창은 선택을 사용하지 않는다.

m_Inven_Bag = sInven_Create(10, 30);
assert_equal(sInven_GetTotalSlotNum(m_Inven_Bag), 30);


m_LastEquipItemIds = [];

for(var i = 0; i < Equip.MAX; ++i)
{
	m_LastEquipItemIds[i] = 0;
}

m_QuickSlotMap = noone;
m_SelectedQuickSlotItemId = 0;
m_LastQuickSlotItemId = 0;

m_MaxSatiety = 100;
m_CurSatiety = m_MaxSatiety;