/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
var x_index = ((mouse_x) & ~31) >> 5;
var y_index = ((mouse_y) & ~31) >> 5;


if(mouse_check_button_pressed(mb_right)){
	if(tile_value == 0){
		tile_value = 1;	
	}else{
		tile_value = 0;
	}
}

if(mouse_check_button_pressed(mb_left)){
	Tile[get_Morton_Index(x_index,y_index)] = tile_value;
}

