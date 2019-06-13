var craftVisible = argument0;
var craftId = argument1;

var index = sBuilding_FindCraftIndex(craftVisible, craftId);
var next = index + 1;

for(; next < array_length_1d(m_CraftList); ++next)
{
	var nextId = m_CraftList[next];
	
	if(craftVisible[nextId] > 0)
	{
		return nextId;
	}
}

return -1;