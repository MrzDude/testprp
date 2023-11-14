right = keyboard_check(ord("D"));
left = keyboard_check(ord("A"));
up = keyboard_check(ord("W"));
down = keyboard_check(ord("S"));

h_velocity = (right - left) * velocity;
v_velocity = (down - up) * velocity;

if(h_velocity != 0 and v_velocity == 0){
	h_velocity = one_dir_velocity * (right - left);	
}
if(v_velocity != 0 and h_velocity == 0){
	v_velocity = one_dir_velocity * (down - up);	
}

if(right-left < 0){
	image_xscale = -3;
}else{
	image_xscale = 3;
}


x += h_velocity;
y += v_velocity;









