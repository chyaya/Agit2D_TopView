enum Tab {
	Inventory,
	Construct,
	
	MAX
}

m_Input_AxisL_Active_Last = false;
m_Input_AxisL_Active_Next_Step_Time = 0;


enum Mode {
	Move,
	Bag,
	DeployBuilding,
	UseBuilding,
	
	MAX
}

m_Mode = Mode.Move;


enum Action {
	NONE,
	
	Attack,	
	OpenBag,
	CloseBag,
	UseItem,
	SelectDeploy,
	Deploy,
	CancelDeploy,
	UseBuilding,
	UnuseBuilding,
	CraftItem_One,
	CraftItem_Half,
	CraftItem_All,
	
	MAX
}

m_ActionName = [
	"",
	"공격",
	"가방 열기",
	"가방 닫기",
	"사용",
	"건설",
	"배치",
	"배치 취소",
	"건물 사용",
	"건물 닫기",
];