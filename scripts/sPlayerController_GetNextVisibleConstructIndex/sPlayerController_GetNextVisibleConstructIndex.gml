var constructId = argument0;
var nextId = constructId + 1;

for(; nextId < array_length_1d(m_ConstructVisible); ++nextId)
{
	if(m_ConstructVisible[nextId] > 0)
	{
		return nextId;
	}
}

return 0;