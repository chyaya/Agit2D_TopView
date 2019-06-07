var _x = argument0;
var _y = argument1;
var craftId = argument2;

var sprite = global.Craft_Sprite[craftId];
	
var tile = 16;
var tileX = floor(_x/tile)*tile + sprite_get_xoffset(sprite);
var tileY = floor(_y/tile)*tile + sprite_get_yoffset(sprite);

return [tileX, tileY];