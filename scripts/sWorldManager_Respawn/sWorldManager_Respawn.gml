var respawnAll = argument_count > 0 ? argument[0] : false;

var index = 0;
while(index < ds_list_size(m_RespawnQueue))
{
 	var item = m_RespawnQueue[|index];
			
	if(item[0] <= m_CurrentDay || respawnAll)
	{
		CreateInstanceFromSaveData(item[1]);
		ds_list_delete(m_RespawnQueue, index);
	}
	else
	{
		++index;
	}
}