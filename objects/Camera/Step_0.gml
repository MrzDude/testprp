x = lerp(x,target.x,0.05);
y = lerp(y,target.y,0.05);

var viewX = camera_get_view_x(view_camera[0]);
var viewY = camera_get_view_y(view_camera[0]);
var viewW = camera_get_view_width(view_camera[0]);
var viewH = camera_get_view_height(view_camera[0]);

var shake_x = 0;
var shake_y = 0;

if(shake){
	shake_time -= 1;
	shake_x = choose(-shake_magnitude, shake_magnitude); 
	shake_y = choose(-shake_magnitude, shake_magnitude);
	
	if(shake_time <= 0){
		shake_magnitude -= shake_fade;
		
		if(shake_magnitude <= 0){
			shake_x = 0;
			shake_y = 0;
			shake = false;
		}
	}
}

camera_set_view_pos(view_camera[0], x - viewW/2 + shake_x, y - viewH/2 + shake_y);



