draw_set_color(c_white);

sPlayerController_DrawGUI_GhostScreenEffect();
sPlayerController_DrawGUI_InteractObject();

if(m_Mode == Mode.Bag)
{
	sPlayerController_DrawGUI_TabList();
	sPlayerController_DrawGUI_Stats();

	switch(m_CurTab)
	{
	case Tab.Inventory:
		sPlayerController_DrawGUI_Tab_Inventory();
		break;
	case Tab.Construct:
		sPlayerController_DrawGUI_Tab_ConstructList();
		break;
	}
}
else if(m_Mode == Mode.UseBuilding)
{
	sPlayerController_DrawGUI_UseBuilding_Craft();
}

sPlayerController_DrawGUI_Actions();

sPlayerController_DrawGUI_GameOver();

//sPlayerController_DrawGUI_Minimap();
