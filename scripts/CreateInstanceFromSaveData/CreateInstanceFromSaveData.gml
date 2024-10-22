///@desc crate an instance from the save map
///@param map

var jsonObj = argument0;
var object = tj_get(jsonObj, "object_index");
var _layer = tj_get(jsonObj, "layer");

var instance = instance_create_layer(0, 0, layer_get_id(_layer), oBlank);

with(instance)
{
	var var_array = global.g_SaveMeta[?object];

	for(var i = 0; i < array_length_1d(var_array); i++)
	{
		var name = var_array[i];
		var value = tj_get(jsonObj, name);
		
		if(ord(name) == ord("#"))
		{					
			var w = tj_get(value, "w");
			var h = tj_get(value, "h");
			var d = tj_get(value, "d");
			var grid = ds_grid_create(w, h);
		
			for (var yy = 0; yy < h; ++yy)
			{	
				var line = d[yy];

				for (var xx = 0; xx < w; ++xx)
				{
					ds_grid_set(grid, xx, yy, line[xx]);
				}
			}
		
			var name2 = string_copy(name, 2, string_length(name) - 1);
			variable_instance_set(self, name2, grid);
		}
		else
		{
			variable_instance_set(self, name, value);
		}
	}

	instance_change(object, true);
}

return instance;