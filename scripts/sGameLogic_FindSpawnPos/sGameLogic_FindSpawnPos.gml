var repeatCount = argument_count > 0 ? argument[0] : 100;
var w = room_width / oPathFinder.cellSize;
var h = room_height / oPathFinder.cellSize;

repeat(repeatCount)
{
	var _x = irandom_range(0, w-1);
	var _y = irandom_range(0, h-1);
	
	if(aStar_get_blocked(_x, _y))
		continue;
		
	return [_x*oPathFinder.cellSize, _y*oPathFinder.cellSize];
}

return [-1, -1];