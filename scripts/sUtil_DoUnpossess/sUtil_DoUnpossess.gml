var playerCon = argument0;

var ghost_obj = instance_create_layer(playerCon.m_PlayerObject.x, playerCon.m_PlayerObject.y, "Instances", oGhost);
playerCon.m_PlayerObject.m_Rotten = true;
playerCon.m_PlayerObject.m_NoSoul = true;
playerCon.m_PlayerObject.m_CurHealth = 0;
playerCon.m_PlayerObject.m_OutlineEnable = false;
playerCon.m_PlayerObject.persistent = false;
playerCon.m_PlayerObject = ghost_obj;

sUtil_CreateNotify(
	playerCon.m_PlayerObjectX, playerCon.m_PlayerObjectY,
	"Soul-" + string(playerCon.m_UnpossessCost),
	0, -30);

