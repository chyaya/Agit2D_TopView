var btnPressed = argument0;

if(false == btnPressed)
	return;
	
var action = argument1;

switch(action)
{
case Action.Attack:
	sUtil_DoAttack(m_PlayerObject, room_speed*0.2);
	break;
case Action.Use:
	with(m_PlayerObject)
	{
		sPawn_Inven_UseItemByPos(selected);
	}
	break;
case Action.OpenBag:
	m_Mode = Mode.Bag;
	break;
case Action.CloseBag:
	m_Mode = Mode.Move;
	break;
case Action.Build:
	m_Mode = Mode.Building;
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
	sPlayerController_DeployBuilding(_x, _y, m_SelectedCraftIndex);
	m_Mode = Mode.Move;
	break;
}