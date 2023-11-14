Tile_Size = 512;
Tile[Tile_Size*Tile_Size] = 0;

data_buffer = buffer_create(Tile_Size*Tile_Size*8,buffer_fixed,1);

buffer_load_partial(data_buffer, "savedata.bin", 0, Tile_Size*Tile_Size*8, 0);

for(var i = 0; i < Tile_Size*Tile_Size ; i++ ){
	Tile[i] = buffer_read(data_buffer,buffer_u64);
}

buffer_delete(data_buffer);


Sprites[3] = 0;

Sprites[0] = Tile_Grey;
Sprites[1] = Tile_Black;
Sprites[2] = Tile_Limit;
Sprites[3] = TIle_2;



tile_value = 1;
