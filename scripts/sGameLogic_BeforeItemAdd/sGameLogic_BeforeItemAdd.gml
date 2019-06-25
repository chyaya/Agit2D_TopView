var itemId = argument0;

with(oPlayerController)
{
	switch(itemId)
	{
	case Item.GoldenTicket:
		m_JournalVisible[Journal.GoldenTicket] = true;	
		
		m_Mode = Mode.Bag;
		m_CurTab = Tab.Journal;
		m_SelectedJournalId = Journal.GoldenTicket;
		
		return false;
	case Item.BluePrint:
		m_JournalVisible[Journal.Cardkey] = true;	
		
		m_Mode = Mode.Bag;
		m_CurTab = Tab.Journal;
		m_SelectedJournalId = Journal.Cardkey;
		
		return false;
	case Item.Drone:
		m_JournalVisible[Journal.RocketPart] = true;	
		
		m_Mode = Mode.Bag;
		m_CurTab = Tab.Journal;
		m_SelectedJournalId = Journal.RocketPart;
		
		return false;
	}
}


return true;