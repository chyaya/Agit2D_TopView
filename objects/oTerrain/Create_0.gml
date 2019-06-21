//=====Assign land types============
enum Tiles {
	WATER,
	LAND,
	MOUNTAIN,
}

var i = 0;
create_tile_info(i++, 125, 210, 180, "Shallows", 10, 74, 73, Tiles.WATER, true);
create_tile_info(i++, 30, 60, 150, "Sand", 4, 54, 54, Tiles.LAND, false);
create_tile_info(i++, 90, 160, 120, "Forest", 2, 52, 52, Tiles.LAND, false);
create_tile_info(i++, 50, 110, 120, "Jungle", 3, 53, 53, Tiles.LAND, false);
create_tile_info(i++, 160, 0, 160, "High mountain", 8, 16, 17, Tiles.MOUNTAIN, true);
create_tile_info(i++, 240, 0, 240, "Mountain top", 8, 16, 17, Tiles.MOUNTAIN, true);
create_tile_info(i++, 125, 170, 145, "Sea", 10, 71, 70, Tiles.WATER, true);
create_tile_info(i++, 35, 50, 120, "Tundra", 7, 56, 56, Tiles.LAND, false);
create_tile_info(i++, 140, 0, 140, "Rocky", 8, 16, 17, Tiles.MOUNTAIN, true);
create_tile_info(i++, 140, 160, 120, "Deep sea", 10, 72, 72, Tiles.WATER, true);

m_TileColor = [];

for(var i = 0; i < 16; ++i)
{
	m_TileColor[i] = make_color_rgb(0, 0, 0);
}

m_TileColor[1] = $2F694B;
m_TileColor[2] = $2F694B;
m_TileColor[3] = $2F694B;
m_TileColor[4] = $9AC3EE;
m_TileColor[5] = $66A0D9;
m_TileColor[6] = $244B52;
m_TileColor[7] = $6A6A69;
m_TileColor[8] = $877E84;
m_TileColor[9] = $877E84;
m_TileColor[10] = $FF9B63;
m_TileColor[11] = $FF9B63;



assert_equal(room_height, room_width);

//Size of the world (i.e grid size)
world_size = room_height / 16;
sealevel = 0.3;



