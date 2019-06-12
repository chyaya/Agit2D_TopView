var list = [];

for(var constructId = 0; constructId < array_length_1d(m_ConstructVisible); ++constructId)
{
	if(m_ConstructVisible[constructId] > 0)
	{
		list[array_length_1d(list)] = constructId;
	}
}

return list;