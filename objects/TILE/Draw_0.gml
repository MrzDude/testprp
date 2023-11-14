var target_x = Camera.x;
var target_y = Camera.y;

var size_x = 700;
var size_y = 400;
var left_x_index = (target_x-size_x) >> 5;
var left_y_index = (target_y-size_y) >> 5;
var right_x_index = (target_x+size_x + 32) >> 5;
var right_y_index = (target_y+size_y + 32) >> 5;

var x_index = mouse_x >> 5;
var y_index = mouse_y >> 5;

var morton_index = 0;
for (var _y = left_y_index; _y <= right_y_index; _y++){
	for (var _x = left_x_index; _x <= right_x_index; _x++)
	{
		morton_index = get_Morton_Index(_x,_y);
		if(morton_index < Tile_Size*Tile_Size){
			draw_sprite(Sprites[Tile[morton_index]],0,_x << 5,_y << 5);
		}
	}
}

draw_rectangle(mouse_x-100,mouse_y-100,mouse_x+100,mouse_y+100,1);
draw_rectangle((mouse_x-100) & ~31,(mouse_y-100) & ~31,((mouse_x+100) & ~31)+32,((mouse_y+100) & ~31)+32,1);


draw_text(target_x-550,target_y-350,$"mouse x index: {x_index} y index: {y_index}");

