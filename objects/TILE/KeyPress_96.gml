


for (var _y = 0; _y <= Tile_Size; _y++){
	Tile[get_Morton_Index(0,_y)] = 2;
}
for (var _x = 0; _x <= Tile_Size; _x++){
	Tile[get_Morton_Index(_x,0)] = 2;
}


for (var _y = 0; _y <= Tile_Size; _y++){
	Tile[get_Morton_Index(Tile_Size/2,_y)] = 3;
}
for (var _x = 0; _x <= Tile_Size; _x++){
	Tile[get_Morton_Index(_x,Tile_Size/2)] = 3;
}