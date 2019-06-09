/*
if(m_GameOver == false)
{
	m_GameOver = true;
	
	if(m_PlayerObject != noone)
	{
		m_PlayerObject.m_CurHealth = 0;
	}
}
*/
m_Actions[ACTION_A] = Action.NONE;
m_Actions[ACTION_B] = Action.NONE;
m_Actions[ACTION_X] = Action.NONE;
m_Actions[ACTION_Y] = Action.NONE;

m_Input_AxisL_Up = false;
m_Input_AxisL_Down = false;
m_Input_AxisL_Left = false;
m_Input_AxisL_Right = false;
m_Input_DPad_Up = false;
m_Input_DPad_Down = false;
m_Input_DPad_Left = false;
m_Input_DPad_Right = false;
m_Input_Btn_A = false;
m_Input_Btn_B = false;
m_Input_Btn_X = false;
m_Input_Btn_Y = false;
m_Input_Btn_Select = false;
m_Input_Btn_Start = false;
m_Input_Btn_LB = false;
m_Input_Btn_RB = false;
m_Input_Btn_LT = false;
m_Input_Btn_RT = false;
m_Input_AxisR_Active = false;
m_Input_AxisR_Angle = 0;


sPlayerController_CaptureKeyboard();
sPlayerController_CaptureGamepad();

m_Input_AxisL_Active = m_Input_AxisL_Up || m_Input_AxisL_Down || m_Input_AxisL_Left || m_Input_AxisL_Right
						|| m_Input_DPad_Up || m_Input_DPad_Down || m_Input_DPad_Left || m_Input_DPad_Right;
m_Input_AxisL_Step = false;

if(m_Input_AxisL_Active && !m_Input_AxisL_Active_Last)
{
	m_Input_AxisL_Active_Next_Step_Time = current_time + 300;
	m_Input_AxisL_Step = true;
}
else if(m_Input_AxisL_Active_Next_Step_Time != 0 && m_Input_AxisL_Active_Next_Step_Time < current_time)
{
	m_Input_AxisL_Active_Next_Step_Time = current_time + 100;
	m_Input_AxisL_Step = true;
}

m_Input_AxisL_Active_Last = m_Input_AxisL_Active;


switch(m_Mode)
{
case Mode.DeployBuilding:
case Mode.Move:
	
	if(m_Mode == Mode.Move)
	{
		m_Actions[ACTION_B] = Action.OpenBag;	
		
		if(m_InteractionObject != noone)
		{
			m_Actions[ACTION_A] = Action.UseBuilding;
		}
	}
	else
	{
		m_Actions[ACTION_A] = Action.Deploy;
		m_Actions[ACTION_B] = Action.CancelDeploy;
	}
	
	
	if(noone != m_PlayerObject)
	{
		m_Actions[ACTION_X] = Action.Attack;
		
		with(m_PlayerObject)
		{
			m_DirY = 0;
			m_DirX = 0;
	
			if(other.m_Input_AxisL_Up)
			{
				m_DirY -= 1;
			}
			else if(other.m_Input_AxisL_Down)
			{
				m_DirY += 1;
			}
	
			if(other.m_Input_AxisL_Left)
			{
				m_DirX -= 1;
			}
			else if(other.m_Input_AxisL_Right)
			{
				m_DirX += 1;
			}
	
			sPawn_Move(1.0);
			
			if(other.m_Input_AxisR_Active)
			{
				m_TargetAngle = other.m_Input_AxisR_Angle;
			}
			else if(m_DirX != 0 || m_DirY != 0)
			{
				m_TargetAngle = point_direction(0, 0, m_DirX, m_DirY);
			}
		}	
	}
	break;
case Mode.Bag:
	m_Actions[ACTION_B] = Action.CloseBag;
	
	with(m_PlayerObject)
	{
		m_DirX = 0;
		m_DirY = 0;
	}
	
	if(m_Input_Btn_LB)
	{
		m_CurTab = max(m_CurTab - 1, 0);
	}

	if(m_Input_Btn_RB)
	{
		m_CurTab = min(m_CurTab + 1, Tab.MAX - 1);
	}
	
	switch(m_CurTab)
	{
	case Tab.Inventory:
		sPlayerController_GUI_Inventory();
		break;
	case Tab.Construct:
		sPlayerController_GUI_Construct();
		break;
		
	}
	break;
case Mode.UseBuilding:
	m_Actions[ACTION_B] = Action.UnuseBuilding;
	m_Actions[ACTION_A] = Action.SelectCraft_One;
	m_Actions[ACTION_X] = Action.SelectCraft_HalfOfAll;
	m_Actions[ACTION_Y] = Action.SelectCraft_All;
	
	with(m_InteractionObject)
	{
		if(other.m_Input_AxisL_Step)
		{
			if(other.m_Input_AxisL_Up || other.m_Input_DPad_Up)
				--m_SelectedCraftIndex;
			else if(other.m_Input_AxisL_Down || other.m_Input_DPad_Down)
				++m_SelectedCraftIndex;
		}

		m_SelectedCraftIndex = clamp(m_SelectedCraftIndex, 0, array_length_1d(m_CraftList) - 1);
	}
	
	
	break;
}

if(noone != m_PlayerObject)
{
	m_PlayerObjectX = m_PlayerObject.x;
	m_PlayerObjectY = m_PlayerObject.y;	
}

sPlayerController_CaptureInteractObject();


if(global.UseFOW)
	sFOW_Update(m_PlayerObjectX, m_PlayerObjectY, oDoor);


if(other.m_Input_Btn_Start)
{
	game_restart();
}
		
if(other.m_Input_Btn_Select)
{
	m_GamepadZoom = !m_GamepadZoom;
		
	if(other.m_GamepadZoom)
	{
		oCamera.zoom = 1.0;
	}
	else
	{
		oCamera.zoom = 4.0;
	}
}
	

//////////////////////////////////////////////////////////
// Ability / Possess

sPlayerController_SelectAction();
sPlayerController_DoAction();


audio_listener_set_position(self, x, y, 0);