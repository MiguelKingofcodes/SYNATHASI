// Inherit the parent event
event_inherited();

// Definindo atributos do player
velocidade = 5 // Velocidade do PLAYER
gravidade = .3 // Gravidade do PLAYER
forca_pulo = -9; // Força de pulo do PLAYER
quant_pulos = 2; // Quantidade de pulos do PLAYER

stamina = 50; // Stamina do PLAYER
hp = 10; // Pontos de Vida do Player
mp = 20; // Pontos de Mana do Player

function input_player(){
	
	/*
		BARRA DE ESPAÇO - Pulo
		Esquerda - A
		Direita - D
		Interação - E
	
	*/
	
	
	// Criando variáveis para as movimentações
	var _left, _right, _jump, _running
	
	
	_left = keyboard_check(ord("A")); // Esquerda
	_right = keyboard_check(ord("D")); // Direita
	
	_running = keyboard_check(vk_shift); // Correndo
	
	_jump = keyboard_check_pressed(vk_space); // Pulando
	
	//_inventory = keyboard_check(vk_tab); // Inventário
	
	
	velH = (_right - _left)*velocidade; // O sentido da velocidade horizontal vai depender do sentido que o player clica
	
	var no_chao = place_meeting(x, y+1, obj_Bloco);
	
	
	// Se o player está no chão
	if (no_chao){
		// Recupera a quantidade de pulos...
		quant_pulos = 2;
		
		// Se o player apertar "Pulo"
		if (_jump && quant_pulos > 0){
		
			// Adiciona velocidade Vertical
			velV = forca_pulo;
			
			// Subtrai a quantidade de pulos   
			quant_pulos -= 1;
			
		
		}
		
		if(_running && (stamina >= 1)){
			velocidade = 10
			if(velH != 0){
			
				stamina -= 1
			
			}
			
		
		}else{
			
			if (stamina < 50 && !_running){
			
				stamina += 1;
			
			}
			
			if(stamina < 10){
			
				velocidade = 3;
			
			}else{
			
				velocidade = 5;
			
			}
			
			
		
		}
		
			
	
	}else{
		
		// Se o player apertar "Pulo"
		if (_jump && quant_pulos > 0){
		
			// Adiciona velocidade Vertical
			velV = forca_pulo;
			
			// Subtrai a quantidade de pulos   
			quant_pulos -= 1;
			
		
		}
		
		velV += gravidade;

		
	}
	

	
	
}


