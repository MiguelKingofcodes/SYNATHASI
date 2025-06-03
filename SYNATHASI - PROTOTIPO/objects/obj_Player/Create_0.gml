// Inherit the parent event
event_inherited();



velocidade = 5 // Velocidade do PLAYER
gravidade = .3 // Gravidade do PLAYER
forca_pulo = -9; // Força de pulo do PLAYER

function input_player(){
	var _left, _right, _jump, _running
	
	_left = keyboard_check(ord("A"));
	_right = keyboard_check(ord("D"));
	
	_running = keyboard_check(vk_shift);
	
	_jump = keyboard_check(vk_space);
	
	
	velH = (_right - _left)*velocidade;
	
	var no_chao = place_meeting(x, y+1, obj_Bloco);
	
	if (no_chao){
	
		if (_jump){
		
			velV = forca_pulo;
		
		}
		
	
	}else{
	
		velV += gravidade;
		
	}

}