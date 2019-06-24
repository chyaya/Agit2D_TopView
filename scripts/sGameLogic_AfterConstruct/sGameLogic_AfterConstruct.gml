var constructId = argument0;


with(oPlayerController)
{
	switch(constructId)
	{
		case Construct.SleepingBag:
			m_JournalVisible[Journal.Prologue] = true;	
			m_JournalComplete[Journal.Prologue] = true;
			break;
	}
}