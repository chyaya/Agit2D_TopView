var journalId = argument0;
var prevId = journalId - 1;

for(; prevId > 0; --prevId)
{
	if(m_JournalVisible[prevId] > 0)
	{
		return prevId;
	}
}

return 0;