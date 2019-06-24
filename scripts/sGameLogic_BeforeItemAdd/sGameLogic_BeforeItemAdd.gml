var itemId = argument0;

with(oPlayerController)
{
	switch(itemId)
	{
	case Item.GoldenTicket:
		m_JournalVisible[Journal.GoldenTicket] = true;	
		return  false;
	
	}
}


return true;