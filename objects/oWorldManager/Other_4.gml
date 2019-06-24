with(instance_create_layer(x, y, layer, oTerrain))
{
	var _l = layer_get_id("Tiles");
	var _m = layer_tilemap_get_id(_l); // Uncomment for tiles!

	for (var ix = 0; ix < world_size; ix++)
	{
	    for (var iy = 0; iy < world_size; iy++)
		{
			var brush = tilemap_get(_m, ix, iy); // Uncomment for tiles!
			var block = (brush >= 8);
			
			if(false == aStar_get_blocked(ix, iy))
				aStar_set_blocked(ix, iy, block);
	    }
	}
}


//var loadFromFile = file_exists(SAVE_FILENAME);

//if(loadFromFile)
//{
//	var json = "";
//	var file = file_text_open_read(SAVE_FILENAME);

//	while(!file_text_eof(file))
//	{
//		json += file_text_readln(file);
//	}

//	file_text_close(file);

//	ClearSavableInstances();

//	if(array_length_1d(LoadInstances(json)) == 0)
//	{
//		show_message("save file format is changed! reset a game.");
//		m_DontSave = true;
		
//		file_delete(SAVE_FILENAME);
//		game_end();
//		return;
//	}
//}


//oPlayerController.m_PlayerObject = oPlayer;
