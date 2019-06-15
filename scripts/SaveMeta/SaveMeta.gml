gml_pragma("global", "SaveMeta();");

#macro SAVE_VERSION 6
#macro SAVE_FILENAME "save.json"

global.g_SaveMeta = ds_map_create();

// Character
global.g_SaveMeta[?oPlayer] = ["x", "y"];
global.g_SaveMeta[?oRobot] = ["x", "y"];
global.g_SaveMeta[?oRobot2] = ["x", "y"];
global.g_SaveMeta[?oChicken] = ["x", "y"];
global.g_SaveMeta[?oCow] = ["x", "y"];

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
global.g_SaveMeta[?oTree] = ["x", "y"];
global.g_SaveMeta[?oRockGray] = ["x", "y"];
global.g_SaveMeta[?oRockBlack] = ["x", "y"];
global.g_SaveMeta[?oRockYellow] = ["x", "y"];
global.g_SaveMeta[?oRockBlue] = ["x", "y"];
global.g_SaveMeta[?oColaCan] = ["x", "y"];
global.g_SaveMeta[?oGrass2] = ["x", "y"];
global.g_SaveMeta[?oGrass] = ["x", "y"];

// Terrain
global.g_SaveMeta[?oTerrain] = ["x", "y", "#elevation_grid", "#heat_grid", "#moisture_grid", "#land_grid", "#wind_grid"];