var cellSize = 16;
var rectSize =	4;
var wallColor = c_gray;
var offsetX = 0;
var offsetY = 0;
var startX = (view_wport[0] - m_MinimapWidth*rectSize)/2;
var startY = (view_hport[0] - m_MinimapHeight*rectSize)/2;

var _l = layer_get_id("Tiles");
var _m = layer_tilemap_get_id(_l); // Uncomment for tiles!

for (var i = 0; i < m_MinimapWidth;  i++;)
{
	for (var j = 0; j < m_MinimapHeight; j++;)
    {
		var x1 = startX + i*rectSize;
		var y1 = startY + j*rectSize;
		var x2 = x1 + rectSize - 1;
		var y2 = y1 + rectSize - 1;
		
		var brush = tilemap_get(_m, i, j); // Uncomment for tiles!
		
		// Water
		if(brush == 10 || brush == 11)
			continue;
		
		var color = oTerrain.m_TileColor[brush];
			
		draw_rectangle_color(x1, y1, x2, y2,
			color, color, color, color, false);
	}
}

// Door
for (i = 0; i < instance_number(all); i += 1)
{
	var obj = instance_find(all, i);
	
	if(false == object_is_ancestor(obj.object_index, oBase))
		continue;
		
	if(false == obj.m_MinimapVisible)
		continue;
	
	var cellX = obj.x div cellSize;
	var cellY = obj.y div cellSize;
	
	if(m_MinimapGrid[# cellX, cellY])
	{
		var x1 = startX + cellX*rectSize;
		var y1 = startY + cellY*rectSize;
		var x2 = x1 + rectSize - 1;
		var y2 = y1 + rectSize - 1;
	
		draw_rectangle_color(x1, y1, x2, y2,
			obj.m_MinimapColor, obj.m_MinimapColor, obj.m_MinimapColor, obj.m_MinimapColor, false);
	}
}
	
// Player
var playerColor = c_aqua;
var x1 = startX + (m_PlayerObjectX div cellSize)*rectSize;
var y1 = startY + (m_PlayerObjectY div cellSize)*rectSize;
var x2 = x1 + rectSize - 1;
var y2 = y1 + rectSize - 1;

draw_rectangle_color(x1, y1, x2, y2,
	playerColor, playerColor, playerColor, playerColor, false);