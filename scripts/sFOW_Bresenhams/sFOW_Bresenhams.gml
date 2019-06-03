/// @description  sFOW_Bresenhams(x1, y1, x2, y2, object_solid, tile_size);
/// @param x1
/// @param  y1
/// @param  x2
/// @param  y2
/// @param  tile_size

// This script uses Bresenham's algorithm for finding all the grid squares that
// fall along an interpolated straight line vector. You can find out more
// here: http://www.roguebasin.com/index.php?title=Bresenham%27s_Line_Algorithm

// DO NOT EDIT THIS SCRIPT! ;)


var x1 = argument0;
var y1 = argument1;
var x2 = argument2;
var y2 = argument3;

var ts = argument4;

var xx = x1;
var yy = y1;

if point_distance(x1,y1,x2,y2) != 0
{
do
    {
    if abs(y2 - y1) > abs(x2 - x1)
        {
        if y1 < y2
            {
            yy += 1;
            }
        else
            {
            yy -= 1;
            }
        xx = x1 + (x2 - x1) * (yy - y1) / (y2 - y1);
        }
    else
        {
        if x1 < x2
            {
            xx += 1;
            }
        else
            {
            xx -= 1;
            }
        yy = y1 + (y2 - y1) * (xx - x1) / (x2 - x1);
        }
    if (aStar_get_blocked(xx - sign(x1 - x2)/ts + 0.5, yy - sign(y1 - y2)/ts  + 0.5))
		return true;
    }
until xx = x2 and yy = y2;
}
return false;
