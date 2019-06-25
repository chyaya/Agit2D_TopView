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
		sInven_UseItemByPos(other.m_CurrentInven, other.m_CurrentInvenSlot);
	}
	break;
case Action.RemoveItem:
	with(m_PlayerObject)
	{
		var count = sInven_GetItemCount(other.m_CurrentInven, other.m_CurrentInvenSlot);
		var result = sInven_RemoveItemByPos(other.m_CurrentInven, other.m_CurrentInvenSlot, count);
		assert_equal(result, 0);
	}
	break;
case Action.TakeItem:
	var count = sInven_GetItemCount(m_CurrentInven, m_CurrentInvenSlot);
	var itemId = sInven_GetItemId(m_CurrentInven, m_CurrentInvenSlot);
	
	if(sGameLogic_BeforeItemAdd(itemId))
	{
		if(sInven_AddItem(m_PlayerObject.m_Inven_Bag, itemId, count, true) == 0)
		{
			sInven_AddItem(m_PlayerObject.m_Inven_Bag, itemId, count);
			sInven_RemoveItemByPos(m_CurrentInven, m_CurrentInvenSlot, count);
		}
	}
	else
	{
		sInven_RemoveItemByPos(m_CurrentInven, m_CurrentInvenSlot, count);
	}
	break;
case Action.OpenBag:
	m_Mode = Mode.Bag;
	
	with(m_PlayerObject)
	{
		sInven_DisconnectInven(m_Inven_Equip);
		sInven_DisconnectInven(m_Inven_Bag);
		sInven_ConnectInvens(m_Inven_Equip, m_Inven_Bag);
	}
	
	with(oPlayerController)
	{
		if(m_CurrentInven != m_PlayerObject.m_Inven_Equip
			&& m_CurrentInven != m_PlayerObject.m_Inven_Bag)
		{
			m_CurrentInven = m_PlayerObject.m_Inven_Bag;
		}
	}
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
	
	if(sPlayerController_CanConstruct_Depoly(m_SelectedConstructId, _x, _y))
	{
		sPlayerController_DeployBuilding(_x, _y, m_SelectedConstructId);
		m_Mode = Mode.Move;	
	}
	else
	{
		sUtil_CreateNotify(_x, _y, "여기에 놓을 수 없어", 0, -30)	
	}
	break;
case Action.UseBuilding:
	if(false == sGameLogic_BeforeUseBuilding(m_InteractionObject))
	{
		sUtil_CreateNotify(m_PlayerObjectX, m_PlayerObjectY, "아무일도 일어나지 않았어", 0, -30)	
		break;
	}

	m_Mode = Mode.UseBuilding;
	
	if(object_is_ancestor(m_InteractionObject.object_index, oBuildingStorage))
	{
		with(m_PlayerObject)
		{
			sInven_DisconnectInven(m_Inven_Equip);
			sInven_DisconnectInven(m_Inven_Bag);
			sInven_ConnectInvens(m_Inven_Bag, other.m_InteractionObject.m_Inven_Storage);
		}
	
		with(oPlayerController)
		{
			m_CurrentInven = m_InteractionObject.m_Inven_Storage;
		}	
	}
	
	break;
case Action.UnuseBuilding:
	m_Mode = Mode.Move;
	break;
case Action.SelectCraft_One:
case Action.SelectCraft_HalfOfAll:
case Action.SelectCraft_All:

	var craftId = m_InteractionObject.m_SelectedCraftId;
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
		
		with(m_PlayerObject)
		{
			sPlayer_AddSatiety(-2);
		}
	}
	
	break;
case Action.Mount:
	m_PlayerObject.m_Mount = m_InteractionObject;
	m_InteractionObject.m_Pilot = m_PlayerObject;
	break;
case Action.Unmount:
	m_PlayerObject.x = m_PlayerObject.m_Mount.x;
	m_PlayerObject.y = m_PlayerObject.m_Mount.y;
	m_PlayerObject.m_Mount.m_DirX = 0;
	m_PlayerObject.m_Mount.m_DirY = 0;

	m_PlayerObject.m_Mount.m_Pilot = noone;
	m_PlayerObject.m_Mount = noone;
	break;
}