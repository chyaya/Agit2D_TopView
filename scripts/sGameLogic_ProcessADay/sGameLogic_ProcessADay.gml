if(instance_exists(oProcessADayTransition))
	return;
	
	
instance_create_layer(x, y, "Controllers", oProcessADayTransition);