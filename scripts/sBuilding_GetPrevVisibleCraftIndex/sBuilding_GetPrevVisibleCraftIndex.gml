var craftVisible = argument0;
var craftId = argument1;

var index = sBuilding_FindCraftIndex(craftVisible, craftId);
var prev = index - 1;

for(; prev >= 0; --prev)
{
	var prevId = m_CraftList[prev]
	
	if(craftVisible[prevId] > 0)
	{
		return prevId;
	}
}

return 0;
