var btnPressed = argument0;

if(false == btnPressed)
	return;
	
var actionName = argument1;

switch(actionName)
{
case "Collect":
	instance_destroy(m_InteractionObject);
	m_InteractionObject = noone;
	break;
case "Open":
	if(m_InteractionObject.m_ActionSound != noone)
		audio_play_sound(m_InteractionObject.m_ActionSound, 1, false);
	if(m_InteractionObject.m_BlockMove == true)
		FOW_Dirty = true;
	instance_destroy(m_InteractionObject);
	m_InteractionObject = noone;
	break;
case "Attack":
	sUtil_DoAttack(m_PlayerObject, room_speed*0.2);
	break;
case "Down":
	room_goto_next();
	break;
case "Use":
	with(m_PlayerObject)
	{
		sPawn_Inven_UseItemByPos(selected);
	}
	break;
case "Drop":
	with(m_PlayerObject)
	{
		sPawn_Inven_DropItemByPos(selected, x, y);
	}
	break;
}