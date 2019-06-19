if(instance_exists(oProcessADayTransition))
	return;
	

var eventId = ds_list_find_value(m_NextEvents, 0);
ds_list_delete(m_NextEvents, 0)

with(instance_create_layer(x, y, "Controllers", oBlank))
{
	m_EventId = eventId;

	instance_change(oProcessADayTransition, true)
}