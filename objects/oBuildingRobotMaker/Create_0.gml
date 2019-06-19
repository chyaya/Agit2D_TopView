// Inherit the parent event
event_inherited();

enum Part
{
	NONE,
	
	Body,
	LeftArm,
	RightArm,
	Legs,
	
	MAX,
}

#macro PART_COUNT (Part.MAX - 1)

m_Inven_Part = sInven_Create(PART_COUNT, PART_COUNT, PART_COUNT);

