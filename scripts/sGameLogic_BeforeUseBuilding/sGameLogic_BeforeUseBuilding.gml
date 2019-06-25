var interactObj = argument0;

with(oPlayerController)
{
	if(interactObj.object_index == oRocketDebris && m_JournalVisible[Journal.GoldenTicket] == false)
	{
		return false;
	}
	
	if(m_JournalVisible[Journal.Cardkey] == false &&
		(interactObj.object_index == oPanta
		|| interactObj.object_index == oWareHouse
		|| interactObj.object_index == oDebris)
		)
	{
		return false;
	}
}


return true;