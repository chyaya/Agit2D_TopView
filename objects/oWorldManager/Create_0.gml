m_StartupUnixTimeStamp = sUtil_UnixTimeStamp();
m_StartupCurrentTime = current_time*0.001;
m_TimeInDay = 0;
m_LastTimeInDay = -1;

m_DayInSecond = 60*20;

m_PauseTime = false;
m_DontSave = false;


var loadFromFile = file_exists(SAVE_FILENAME);

if(loadFromFile)
{
	var json = "";
	var file = file_text_open_read(SAVE_FILENAME);

	while(!file_text_eof(file))
	{
		json += file_text_readln(file);
	}

	file_text_close(file);

	ClearSavableInstances();

	if(array_length_1d(LoadInstances(json)) == 0)
	{
		show_message("save file format is changed! reset a game.");
		m_DontSave = true;
		
		file_delete(SAVE_FILENAME);
		game_restart();
		return;
	}
}
else
{
	with(instance_create_layer(x, y, layer, oTerrain))
	{
		sTerrain_CreateProceduralWorld();
	}
}

with(oTerrain)
{
	var _l = layer_get_id("Tiles");
	var _m = layer_tilemap_get_id(_l); // Uncomment for tiles!

	for (ix = 0; ix < world_size; ix++)
	{
	    for (iy = 0; iy < world_size; iy++)
		{
			var t = ds_grid_get(land_grid,ix,iy);
			var u = iy > 0 ? ds_grid_get(land_grid,ix,iy - 1) : t;
			var d = iy < world_size - 1 ? ds_grid_get(land_grid,ix,iy + 1) : t;
		
			var brush = 0;
		
			if(Tile_Brush[t] != Tile_Brush_Up[t]
				&& Tile_Category[t] != Tile_Category[u]
				&& Tile_Brush[t] != Tile_Brush[u])
			{
				brush = Tile_Brush_Up[t];
			}
			else if(Tile_Brush[t] != Tile_Brush_Down[t]
				&& Tile_Category[t] != Tile_Category[d]
				&& Tile_Brush[t] != Tile_Brush[d])
			{
				brush = Tile_Brush_Down[t];
			}
			else 
			{
				brush = Tile_Brush[t];
			}
		
		
			tilemap_set(_m, brush, ix, iy); // Uncomment for tiles!
			
			if(false == aStar_get_blocked(ix, iy))
				aStar_set_blocked(ix, iy, Tile_Block[t]);
	    }
	}
}


if(false == loadFromFile)
{
	var pos = sGameLogic_FindSpawnPos(0);
	
	instance_create_layer(pos[0], pos[1], "Instances", oPlayer);     // Create the player!

	repeat(10)
	{
		sGameLogic_ProcessADayImpl();	
	}
}