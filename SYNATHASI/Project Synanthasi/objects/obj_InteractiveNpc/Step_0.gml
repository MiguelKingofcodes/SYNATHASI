var _colPlayer = instance_place(x+1, y, obj_PlayerTeste1);


// O Player vai sempre passar para a próxima "Room" na mesma altura que estava na anterior...
if (_colPlayer){
	
	if (keyboard_check(ord("E"))){	
		if (myTextBox == noone){
			myTextBox = instance_create_layer(20, 10, "TextAndInteractions", obj_TextBoxTest);
			myTextBox.texto_ = text;
		}
	}
	
	
}else{

	if(myTextBox != noone){
		instance_destroy(myTextBox);
		myTextBox = noone;
	}

}
