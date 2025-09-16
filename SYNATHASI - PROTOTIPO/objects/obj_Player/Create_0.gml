// Inherit the parent event
event_inherited();

// Inventário e outras mecânicas...
PlayerInventory = []
InDialog = false;

velocidade = 5 // Velocidade do PLAYER
gravidade = .3 // Gravidade do PLAYER
forca_pulo = -9; // Força de pulo do PLAYER

stamina = 50

function input_player(){
	
	/*
		BARRA DE ESPAÇO - Pulo
		Esquerda - A
		Direita - D
		Interação - E
	
	*/
	
	
	
	var _left, _right, _jump, _running
	
	_left = keyboard_check(ord("A"));
	_right = keyboard_check(ord("D"));
	
	_running = keyboard_check(vk_shift);
	
	_jump = keyboard_check(vk_space);
	
	_inventory = keyboard_check(vk_tab);
	
	
	velH = (_right - _left)*velocidade;
	
	var no_chao = place_meeting(x, y+velV, obj_Bloco);
	
	var interactive_object = place_meeting(x, y, obj_ChangeRoomInteract);
	
	// Se o player está no chão
	if (no_chao){
		
		// Se o player apertar "Pulo"
		if (_jump){
		
			// Adiciona velocidade Vertical
			velV = forca_pulo;
			sprite_index = spr_PlayerJump;
			
		
		}
		
		if(_running && (stamina >= 1)){
			velocidade = 20
			if(velH != 0){
			
				stamina -= 1
			
			}
			
		
		}else{
			
			if (stamina < 50 && !_running){
			
				stamina += 1
			
			}
			
			if(stamina < 5){
			
				velocidade = 3
			
			}else{
			
				velocidade = 5
			
			}
			
			
		
		}
		
		// Personagem Parado
		if(velH == 0){
		
			sprite_index = spr_PLayerParado; 
				
		
		}else{
			
			if(_left){
				image_xscale = -1
			}
			if(_right){
				image_xscale = 1
			}
			
			sprite_index = spr_Player;
				
			
		}
		

		if(velV < 0){
			
			sprite_index = spr_PlayerJump;
		
		}
		
		
	
	}else{
	
		velV += gravidade;
			if(_left){
				image_xscale = -1
			}
			if(_right){
				image_xscale = 1
			}
		
	}
	

	
	
}

	


