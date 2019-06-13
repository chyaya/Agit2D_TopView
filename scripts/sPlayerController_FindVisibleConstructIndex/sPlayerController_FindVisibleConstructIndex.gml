var desiredId = argument0;
var count = 0;

for(var constructId = 0; constructId < array_length_1d(m_ConstructVisible); ++constructId)
{
	if(constructId == desiredId)
	{
		return count;	
	}

	if(m_ConstructVisible[constructId] > 0)
	{
		++count;
	}
}

return -1;