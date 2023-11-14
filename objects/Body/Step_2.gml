var _prev_x = x;
var _prev_y = y;

x = Player.x;
y = Player.y;
image_xscale = Player.image_xscale;

if(_prev_x != x or _prev_y != y){
	image_speed = 1;
}else{
	image_speed = 0;
	image_index = 0;
}










