show_debug_message("Init Player Controller");

// Initialise some specific instance variables (see script for the arguments)
if(global.UseFOW)
	sFOW_InitInstance(12, x, y, true);

if(false == variable_instance_exists(id, "m_PlayerObject"))
{
	if(instance_exists(oPlayer) == false)
	{
		show_message("no player ghost");	
	}

	m_PlayerObject = instance_find(oPlayer, 0);
	m_PlayerObject.m_AI_Control = false;
}

m_CurrentInven = m_PlayerObject.m_Inven_Bag;
m_CurrentInvenSlot = 1;

m_InteractionObject = noone;

m_PlayerObjectX = m_PlayerObject.x;
m_PlayerObjectY = m_PlayerObject.y;

m_Mode = Mode.Move;
m_CurTab = Tab.Inventory;
m_SelectedConstructId = 1;

m_WallMap = layer_tilemap_get_id("Tiles");

m_GamepadZoom = false;

#macro ACTION_A 0
#macro ACTION_B 1
#macro ACTION_X 2
#macro ACTION_Y 3

m_Actions[ACTION_A] = Action.NONE;
m_Actions[ACTION_B] = Action.NONE;
m_Actions[ACTION_X] = Action.NONE;
m_Actions[ACTION_Y] = Action.NONE;

alarm[0] = room_speed;

m_MinimapWidth = room_width / TILE_SIZE;
m_MinimapHeight = room_height / TILE_SIZE;
m_MinimapGrid = ds_grid_create(m_MinimapWidth, m_MinimapHeight);

for (var i = 0; i < m_MinimapWidth;  i++;)
{
	for (var j = 0; j < m_MinimapHeight; j++;)
    {
		m_MinimapGrid[# i, j] = false;
	}
}
