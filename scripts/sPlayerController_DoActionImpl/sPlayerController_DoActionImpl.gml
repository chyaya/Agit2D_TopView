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
}