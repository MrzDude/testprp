var buffer_file = buffer_create(Tile_Size*Tile_Size*8,buffer_fixed,1);


for(var i = 0; i < Tile_Size*Tile_Size ; i++ ){
	buffer_write(buffer_file,buffer_u64,Tile[i]);	
}

buffer_save(buffer_file, "savedata.bin");

buffer_delete(buffer_file);





