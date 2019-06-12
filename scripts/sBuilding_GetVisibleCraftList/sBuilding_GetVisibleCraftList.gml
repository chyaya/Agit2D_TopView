var craftVisible = argument0;
var list = [];

for(var i = 0; i < array_length_1d(m_CraftList); ++i)
{
	var craftId = m_CraftList[i];
	
	if(craftVisible[craftId] > 0)
	{
		list[array_length_1d(list)] = craftId;
	}
}

return list;