//=====Assign land types============
enum Tiles {
	WATER,
	LAND,
	MOUNTAIN,
}

var i = 0;
create_tile_info(i++, 125, 210, 180, "Shallows", 73, 74, 73, Tiles.WATER, true);
create_tile_info(i++, 30, 60, 150, "Sand", 54, 54, 54, Tiles.LAND, false);
create_tile_info(i++, 90, 160, 120, "Forest", 52, 52, 52, Tiles.LAND, false);
create_tile_info(i++, 50, 110, 120, "Jungle", 53, 53, 53, Tiles.LAND, false);
create_tile_info(i++, 160, 0, 160, "High mountain", 16, 16, 17, Tiles.MOUNTAIN, true);
create_tile_info(i++, 240, 0, 240, "Mountain top", 16, 16, 17, Tiles.MOUNTAIN, true);
create_tile_info(i++, 125, 170, 145, "Sea", 70, 71, 70, Tiles.WATER, true);
create_tile_info(i++, 35, 50, 120, "Tundra", 56, 56, 56, Tiles.LAND, false);
create_tile_info(i++, 140, 0, 140, "Rocky", 16, 16, 17, Tiles.MOUNTAIN, true);
create_tile_info(i++, 140, 160, 120, "Deep sea", 72, 72, 72, Tiles.WATER, true);

assert_equal(room_height, room_width);

//Size of the world (i.e grid size)
world_size = room_height / 16;
sealevel = 0.5;


