var i;

// change control var
var mode_color = oWorldManager.m_TimeInDay;

var range = [0, 0.1, 0.2, 0.5, 0.8, 0.9, 1];

// from dusk till dawn

for(var r = 0; r < array_length_1d(range) - 1; ++r)
{
	if (mode_color = clamp(mode_color, range[r], range[r + 1]))
	{
	    for (var i = 0; i < 3; i ++)
		{
	        cur_color[i] = lerp(var_color[r*3+i], var_color[(r + 1)*3+i], (mode_color - range[r])/(range[r+1] - range[r]));
	    }
	}
}
