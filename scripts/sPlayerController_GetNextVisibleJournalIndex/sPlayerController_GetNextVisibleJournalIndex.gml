var journalId = argument0;
var nextId = journalId + 1;

for(; nextId < array_length_1d(m_JournalVisible); ++nextId)
{
	if(m_JournalVisible[nextId] > 0)
	{
		return nextId;
	}
}

return 0;