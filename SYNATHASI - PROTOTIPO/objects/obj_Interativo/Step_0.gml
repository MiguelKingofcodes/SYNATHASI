var _colPlayer = instance_place(x+1, y, obj_Player);

if (_colPlayer){
	// Checa se já há um texto sendo mostrado...

<<<<<<< Updated upstream
	if (keyboard_check(ord("E")) || obj_Player.seeingMessage == false){	
		obj_Player.seeingMessage = true;
		if (myTextBox == noone){
				myTextBox = instance_create_layer(x - 150, y-150, "Text_and_interactions", obj_TextBox)
				myTextBox.texto_ = interactText;
		}
		
=======
	//if(!inDialog){
	
		
		if (keyboard_check(ord("E"))){	
			if (myTextBox == noone){
					myTextBox = instance_create_layer(10, 15, "Text_and_interactions", obj_TextBox)
					myTextBox.texto_ = npcText;
			}
		
		}
		
>>>>>>> Stashed changes
		if(keyInteraction){
		
			if(keyboard_check(ord("Y"))){
			
<<<<<<< Updated upstream
				obj_Player.PlayerInventory = "Rosa das Damas Eldred";
=======
					obj_Player.PlayerInventory[0] = "Rosa das Damas Eldred";
>>>>>>> Stashed changes
				
			}
		
<<<<<<< Updated upstream
		}
		
	}
}else{
	if(myTextBox != noone){
=======
} else if (myTextBox != noone){
>>>>>>> Stashed changes
		instance_destroy(myTextBox);
		myTextBox = noone;
		
	}
	obj_Player.seeingMessage = false;
}


