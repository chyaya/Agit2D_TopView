///@desc returns a map representing an instance
///@param instance

var instance = argument0;
var object = instance.object_index;

var var_array = global.g_SaveMeta[?object];

var jsonObj = tj_object("object_index", object, "layer", layer_get_name(instance.layer));

for(var i = 0; i < array_length_1d(var_array); i++)
{
	var name = var_array[i];
	
	//if(ord(name) == ord(","))
	//{
	//	var name2 = string_copy(name, 2, string_length(name) - 1);
	//	var value = variable_instance_get(instance, name2);

	//	var array2DObj = [];
	
	//	for (var i = 0; i < array_height_2d(value); ++i;)
	//	{
	//		tj_array()
			
	//		for (var j = 0; j < array_length_2d(value, i); ++j;)
	//		{
				
				
	//			a[i, j] = -1;
	//		}
		
	//		tj_set(jsonObj, name, value);
			
	//	}

	//	tj_set(jsonObj, name, array2DObj);
	//}
	//else
	if(ord(name) == ord("#"))
	{
		var name2 = string_copy(name, 2, string_length(name) - 1);
		var value = variable_instance_get(instance, name2);

		var w = ds_grid_width(value);
		var h = ds_grid_height(value);
		
		var grid = [];
	
		for (var j = 0; j < h; ++j)
		{	
			for (var i = 0; i < w; ++i)
			{
				var v = ds_grid_get(value, i, j);
				grid[i + j*h] = v;
			}	
		}
		
		var gridObj = tj_object("w", w, "h", h, "d", grid);
		tj_set(jsonObj, name, gridObj);
	}
	else
	{
		var value = variable_instance_get(instance, name);		
		tj_set(jsonObj, name, value);
	}
}

return jsonObj;