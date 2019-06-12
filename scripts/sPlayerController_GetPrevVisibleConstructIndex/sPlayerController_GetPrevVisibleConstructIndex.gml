var constructId = argument0;
var prevId = constructId - 1;

for(; prevId > 0; --prevId)
{
	if(m_ConstructVisible[prevId] > 0)
	{
		return prevId;
	}
}

return 0;