var _colPlayer = instance_place(x+1, y, obj_Player);

if (_colPlayer){
	// Checa se já há um texto sendo mostrado...

	if (keyboard_check(ord("E")) || obj_Player.seeingMessage == false){	
		obj_Player.seeingMessage = true;
		if (myTextBox == noone){
				myTextBox = instance_create_layer(x - 150, y-150, "Text_and_interactions", obj_TextBox)
				myTextBox.texto_ = interactText;
		}
		
		if(keyInteraction){
		
			if(keyboard_check(ord("Y"))){
			
				obj_Player.PlayerInventory = "Rosa das Damas Eldred";
				
			}
		
		}
		
	}
}else{
	if(myTextBox != noone){
		instance_destroy(myTextBox);
		myTextBox = noone;
		
	}
	obj_Player.seeingMessage = false;
}


