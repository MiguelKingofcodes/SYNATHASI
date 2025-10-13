vel_V = 0;
vel_H = 0;
grav = .5;


function playerInput(){
	
	_left = keyboard_check(ord("A"));
	_right = keyboard_check(ord("D"));
	
	if(_left){
	
		x -= vel_H;
	
	}
	
}



