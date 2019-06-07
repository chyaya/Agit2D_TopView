/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(false == variable_instance_exists(id, "m_CraftId"))
{
	m_CraftId = 0;
}

sprite_index = global.Craft_Sprite[m_CraftId];
