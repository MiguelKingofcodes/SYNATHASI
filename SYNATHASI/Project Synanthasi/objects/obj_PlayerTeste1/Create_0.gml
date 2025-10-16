// Inherit the parent event
event_inherited();

// Definindo atributos do player
velocidade = 5 // Velocidade do PLAYER
gravidade = .3 // Gravidade do PLAYER
forca_pulo = -9; // Força de pulo do PLAYER
quant_pulos = 2; // Quantidade de pulos do PLAYER

// Atributos para Mecânicas
stamina = 50; // Stamina do PLAYER
hp = 10; // Pontos de Vida do Player
mp = 20; // Pontos de Mana do Player

// Atributos importantes porém não á mostra...
last_direction = ""; // Última direção que o Player virou..
died = false;

function input_player(){
	
	/*
		BARRA DE ESPAÇO - Pulo
		Esquerda - A
		Direita - D
		Interação - E
	
	*/
	
	
	// Criando variáveis para as movimentações
	var _left, _right, _down, _up, _jump, _running
	
	
	_left = keyboard_check(ord("A")); // Esquerda
	_right = keyboard_check(ord("D")); // Direita
	_up = keyboard_check(ord("W")); // Cima
	_down = keyboard_check(ord("S")); // Baixo
	
	_running = keyboard_check(vk_shift); // Correndo
	
	_jump = keyboard_check_pressed(vk_space); // Pulando
	
	//_inventory = keyboard_check(vk_tab); // Inventário
	
	
	velH = (_right - _left)*velocidade; // O sentido da velocidade horizontal vai depender do sentido que o player clica
	
	var no_chao = place_meeting(x, y+1, obj_Bloco);	
		
	// Implementando teste de Magia
	var _Left, _Right, _Up, _Down
	
	_Left = keyboard_check_pressed(ord("A")); // Esquerda
	_Right = keyboard_check_pressed(ord("D")); // Direita
	_Up = keyboard_check_pressed(ord("W")); // Cima
	_Down = keyboard_check_pressed(ord("S")); // Baixo
	
	
	if(_Up){
	
		last_direction = "cima";
	
	}else if(_Down){
	
		last_direction = "baixo";
	
	}else if(_Right){
	
		last_direction = "frente";
	
	}else if(_Left){
	
		last_direction = "atras";
	
	}/*else{
	
		last_direction = "frente";
	
	}*/
	
	
	
	var _fireball = keyboard_check_pressed(ord("K"));
	if(_fireball && mp > 5 && (mp - 5) > 0){
	
		instance_create_layer(x, y-2, "Instances", obj_TesteFireBall);
		mp -= 5;
		
	}else{
	
		if(mp <= 20){

			mp += 0.05;
		
		}
	
	}
	
	var _fairyjump = keyboard_check_pressed(ord("L"));
	if(_fairyjump && mp > 0 && (mp - 5) > 0){
	
		velV = -3;
		mp -= 5;
		
	}else{
	
		if(mp <= 20){

			mp += 0.05;
		
		}
	
	}
	
	/*
	CODAR SLASH
	var _slash = keyboard_check_pressed(ord("J"));
	var _enemyFront = instance_place(x+5, y, obj_PlayerTeste1);
	if(_slash && stamina > 0 && (stamina - 5) > 0){
	
		
		
		stamina -= 5;
		
	}else{
	
		if (stamina < 50 && !_slash){
			
			stamina += 1;
			
		}
	
	}
	*/
	
	// Testando Implementação de Inimigos e Knockback
	var _enemyFront = instance_place(x+1, y, obj_EnemyTest);
	var _enemyBack = instance_place(x-1, y, obj_EnemyTest);
	if(_enemyFront){
		
		velH += -30
		hp -= 2;
		if((hp-2) == 0){
			died = true;
			room_goto(GameOver);
			
		}
		
		
	}else if (_enemyBack){
		
		if((hp-2) == 0){
			died = true;
			room_goto(GameOver);
		
		}
		
		velH += 30
		hp -= 2;
		
	}
		
	
	
	
	
	
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

	

/*

 			if(last_direction == "frente"){
				if(_running){
				
					velH = 7;
				
				}else{
				
					velH = 4;
				
				}
			}

*/
	

	


