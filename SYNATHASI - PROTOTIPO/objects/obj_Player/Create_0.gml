// Inherit the parent event
event_inherited();

<<<<<<< Updated upstream
=======
// Atributos Personalizados...
seeingMessage = true;

// Inventário e outras mecânicas...
<<<<<<< Updated upstream
PlayerInventory = [];
PlayerParty = [];



>>>>>>> Stashed changes

=======
PlayerInventory = []
myInventoryBox = noone;

InDialog = false;
>>>>>>> Stashed changes

velocidade = 5 // Velocidade do PLAYER
gravidade = .3 // Gravidade do PLAYER
forca_pulo = -9; // Força de pulo do PLAYER

stamina = 20

function input_player(){
	
	/*
		BARRA DE ESPAÇO - Pulo
		Esquerda - A
		Direita - D
		Interação - E
		
		Inventário - Tab
	
	*/
	
	
	
	var _left, _right, _jump, _running
	
	_left = keyboard_check(ord("A"));
	_right = keyboard_check(ord("D"));
	
	_running = keyboard_check(vk_shift);
	
	_jump = keyboard_check(vk_space);
	
<<<<<<< Updated upstream
	
=======
	_tab = keyboard_check(vk_tab);
	_tabDijuntor = false;
	_inventory = false;
	
	
	if(_tab){
	
		_tabDijuntor = true;
	
	}
	
	
	if(_tabDijuntor){
		
		_inventory = !_inventory;
	
	}
	

>>>>>>> Stashed changes
	
	
	velH = (_right - _left)*velocidade;
	
	var no_chao = place_meeting(x, y+velV, obj_Bloco);
	
	var interactive_object = place_meeting(x, y, obj_ChangeRoomInteract);
	
	// Se o player está no chão
	
	if(_inventory){
	
			if (myInventoryBox == noone){
					myInventoryBox = instance_create_layer(10, 15, "Player", obj_Inventory)
					//myTextBox.texto_ = npcText;
			}
		
			/*if(keyInteraction){
		
				if(keyboard_check(ord("Y"))){
			
					obj_Player.PlayerInventory = "Rosa das Damas Eldred";
				
				}
		
			}*/
		
} else if (myInventoryBox != noone){
		instance_destroy(myInventoryBox);
		//obj_Player.InDialog = false;
		myInventoryBox = noone;
}
	
	
	
	if (no_chao){
		
		// Se o player apertar "Pulo"
		if (_jump){
		
			// Adiciona velocidade Vertical
			velV = forca_pulo;
			sprite_index = spr_PlayerJump;
			
		
		}
		
		if(_running && (stamina > 1)){
			velocidade = 10
			stamina -= 1
		
		}else{
			
			if (stamina < 20){
			
				stamina += 1
			
			}
			
			velocidade = 5
			sprite_duplicate(spr_Player)
		
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

	


