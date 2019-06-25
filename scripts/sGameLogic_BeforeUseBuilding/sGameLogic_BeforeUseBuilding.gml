var interactObj = argument0;

with(oPlayerController)
{
	if(interactObj.object_index == oCarcass && m_JournalVisible[Journal.GoldenTicket] == false)
	{
		return false;
	}
	
	if(interactObj.object_index == oLap && m_JournalVisible[Journal.Cardkey] == false)
	{
		return false;
	}
	
	if(m_JournalVisible[Journal.RocketPart] == false &&
		(interactObj.object_index == oPanta
		|| interactObj.object_index == oWareHouse
		|| interactObj.object_index == oDebris)
		)
	{
		return false;
	}
}


return true;