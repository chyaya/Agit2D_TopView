var craftVisible = argument0;
var desiredId = argument1;
var count = 0;

for(var i = 0; i < array_length_1d(m_CraftList); ++i)
{
	var craftId = m_CraftList[i];
	
	if(craftId == desiredId)
	{
		return count;	
	}

	if(craftVisible[craftId] > 0)
	{
		++count;
	}
}

return 0;