sPlayerController_DrawGUI_GhostScreenEffect();
sPlayerController_DrawGUI_Actions();
sPlayerController_DrawGUI_InteractObject();
sPlayerController_DrawGUI_GameOver();

if(m_ShowInventory)
{
	sPlayerController_DrawGUI_TabList();
	sPlayerController_DrawGUI_Stats();

	switch(m_CurTab)
	{
	case Tab.Inventory:
		sPlayerController_DrawGUI_Tab_Inventory();
		break;
	case Tab.Craft:
		sPlayerController_DrawGUI_Tab_CraftList();
		break;
	}
}

//sPlayerController_DrawGUI_Minimap();
