var btnPressed = argument0;

if(false == btnPressed)
	return;
	
var action = argument1;

switch(action)
{
case Action.Attack:
	sUtil_DoAttack(m_PlayerObject, room_speed*0.2);
	break;
case Action.UseItem:
	with(m_PlayerObject)
	{
		sInven_UseItemByPos(m_Inven_Bag, sInven_GetSelectedPos(m_Inven_Bag));
	}
	break;
case Action.OpenBag:
	m_Mode = Mode.Bag;
	break;
case Action.CloseBag:
	m_Mode = Mode.Move;
	break;
case Action.SelectDeploy:
	m_Mode = Mode.DeployBuilding;
	break;
case Action.CancelDeploy:
	m_Mode = Mode.Move;
	break;
case Action.Deploy:
	var _x, _y;
	with(m_PlayerObject)
	{
		_x = x + m_TargetOffsetX;
		_y = y + m_TargetOffsetY;
	}
	
	if(sPlayerController_CanConstruct_Depoly(m_SelectedConstructIndex, _x, _y))
	{
		sPlayerController_DeployBuilding(_x, _y, m_SelectedConstructIndex);
		m_Mode = Mode.Move;	
	}
	else
	{
		sUtil_CreateNotify(_x, _y, "I can't build there.", 0, -30)	
	}
	break;
case Action.UseBuilding:
	m_Mode = Mode.UseBuilding;
	break;
case Action.UnuseBuilding:
	m_Mode = Mode.Move;
	break;
case Action.SelectCraft_One:
case Action.SelectCraft_HalfOfAll:
case Action.SelectCraft_All:

	var craftId = 0;
	
	with(m_InteractionObject)
	{
		craftId = m_CraftList[m_SelectedCraftIndex];
	}

	var maxCount = 1;

	if(action != Action.SelectCraft_One)
	{
		maxCount = sPlayerController_Craft_MaxCraftCount(craftId);
	
		if(maxCount > 0)
		{
			if(action == Action.SelectCraft_HalfOfAll)
				maxCount = ceil(maxCount/2);
		}
	}
	
	if(sPlayerController_CanCraft_MaterialEnough(craftId, maxCount))
	{
		repeat(maxCount)
		{
			sPlayerController_Craft_RemoveMaterial(craftId);
		}
	
		with(m_InteractionObject)
		{
			m_CraftingCount = maxCount;
			m_CraftingStartTime = current_time;
		}
		
		m_Mode = Mode.Move;
	}
	break;
}