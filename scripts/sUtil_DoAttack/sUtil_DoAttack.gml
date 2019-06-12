var attackObj = argument0;
var attackCoolTime = argument1;

var _x = attackObj.x;
var _y = attackObj.y - attackObj.sprite_height/2;

with (instance_create_layer(_x, _y, "Instances", oBlank))
{
	m_OwnerObj = attackObj.id;
	m_CombatDamage = attackObj.m_CombatDamage;
	m_GatheringDamage = attackObj.m_GatheringDamage;
		
	var attackRes = noone;
		
	switch(attackObj.m_AttackType)
	{
	case 0:	
		attackRes = oMelee1;
		break;
	case 1:
		attackRes = oMelee2;
		break;
	}
		
	instance_change(attackRes, true);
}

attackObj.m_Attacking = true;
attackObj.alarm[0] = argument1;