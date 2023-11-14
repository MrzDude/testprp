//Tile Draw Antiguo
/*
var size_x = 700;
var size_y = 350;
var left_x_index = ((mouse_x-size_x) & ~31) >> 5;
var left_y_index = ((mouse_y-size_y) & ~31) >> 5;
var right_x_index = (((mouse_x+size_x) & ~31)+32) >> 5;
var right_y_index = (((mouse_y+size_y) & ~31)+32) >> 5;
draw_text(Player.x,Player.y,$"left x index: {((mouse_x-100) & ~31) >> 5}");
draw_text(Player.x,Player.y+30,$"left y index: {((mouse_y-100) & ~31) >> 5}");
draw_text(Player.x,Player.y+60,$"right x index: {(((mouse_x+100) & ~31)+32) >> 5}");
draw_text(Player.x,Player.y+90,$"right y index: {(((mouse_y+100) & ~31)+32) >> 5}");

var x_index = ((mouse_x) & ~31) >> 5;
var y_index = ((mouse_y) & ~31) >> 5;
//draw_text(100,220,$"xi: {x_index} yi: {y_index} mi: {get_Morton_Index(x_index,y_index)}");
//draw_text(100,250,$"index: {Tile[get_Morton_Index(x_index,y_index)]}");
//draw_sprite(Sprites[Tile[get_Morton_Index(x_index,y_index)]],0,mouse_x & ~31,mouse_y & ~31);

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


draw_text(Player.x,Player.y,$"left x index: {((mouse_x-100) & ~31) >> 5}");
draw_text(Player.x,Player.y+30,$"left y index: {((mouse_y-100) & ~31) >> 5}");
draw_text(Player.x,Player.y+60,$"right x index: {(((mouse_x+100) & ~31)+32) >> 5}");
draw_text(Player.x,Player.y+90,$"right y index: {(((mouse_y+100) & ~31)+32) >> 5}");

//draw_text(Player.x,Player.y,$"mi: {get_Morton_Index(x_index,y_index)}");

*/