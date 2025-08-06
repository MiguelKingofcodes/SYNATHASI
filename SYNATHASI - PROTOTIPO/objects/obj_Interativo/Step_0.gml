var _colPlayer = instance_place(x+1, y, obj_Player);

if (_colPlayer){
	// Checa se já há um texto sendo mostrado...

	if (keyboard_check(ord("E"))){	
		if (myTextBox == noone){
				myTextBox = instance_create_layer(x - 150, y-150, "Text_and_interactions", obj_TextBox)
				myTextBox.texto_ = npcText;
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
}


