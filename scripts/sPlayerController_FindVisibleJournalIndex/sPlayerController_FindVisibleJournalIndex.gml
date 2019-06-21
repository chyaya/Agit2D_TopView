var desiredId = argument0;
var count = 0;

for(var journalId = array_length_1d(m_JournalVisible) - 1; journalId >= 0; --journalId)
{
	if(journalId == desiredId)
	{
		return count;	
	}

	if(m_JournalVisible[journalId] > 0)
	{
		++count;
	}
}

return -1;