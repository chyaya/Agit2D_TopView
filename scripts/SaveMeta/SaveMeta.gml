gml_pragma("global", "SaveMeta();");

#macro SAVE_VERSION 7
#macro SAVE_FILENAME "save.json"

global.g_SaveMeta = ds_map_create();

// Building
global.g_SaveMeta[?oBonfire] = ["x", "y", "m_ConstructId"];
global.g_SaveMeta[?oWorkbench] = ["x", "y", "m_ConstructId"];
global.g_SaveMeta[?oBlastFurnace] = ["x", "y", "m_ConstructId"];
global.g_SaveMeta[?oBuildLap] = ["x", "y", "m_ConstructId"];
global.g_SaveMeta[?oTinkerShop] = ["x", "y", "m_ConstructId"];
global.g_SaveMeta[?oRobotMixer] = ["x", "y", "m_ConstructId"];
global.g_SaveMeta[?oRobotMaker] = ["x", "y", "m_ConstructId"];
global.g_SaveMeta[?oCastleWall] = ["x", "y", "m_ConstructId"];
global.g_SaveMeta[?oCastleDoor] = ["x", "y", "m_ConstructId"];
global.g_SaveMeta[?oDefenseTower] = ["x", "y", "m_ConstructId"];
global.g_SaveMeta[?oWatchTower] = ["x", "y", "m_ConstructId"];

// Resource
for(var i = 0; object_exists(i); ++i)
{
	if(object_is_ancestor(i, oResource))
	{
		show_debug_message("SaveMeta: " + object_get_name(i));
		global.g_SaveMeta[?i] = ["x", "y"];	
	}
	else if(object_is_ancestor(i, oPawn))
	{
		show_debug_message("SaveMeta: " + object_get_name(i));
		global.g_SaveMeta[?i] = ["x", "y"];	
	}
}