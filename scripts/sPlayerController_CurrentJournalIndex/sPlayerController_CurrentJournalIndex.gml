for(var journalId = array_length_1d(m_JournalVisible) - 1; journalId >= 0; --journalId)
{
	if(m_JournalVisible[journalId] > 0 && m_JournalComplete[journalId] == false)
	{
		return journalId;
	}
}

return 0;