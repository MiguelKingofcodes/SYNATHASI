// Identificar a passagem do player para a próxima Room
// Vai obter as informações do player e então ir para a próxima room..

// Interatível, o Player precisa clicar em "e" para ir para a sala de destino


var _colPlayer = instance_place(x+1, y, obj_Player);

// O Player vai sempre passar para a próxima "Room" na mesma altura que estava na anterior...
if (_colPlayer){
	
		// Checa se já há um texto sendo mostrado...
		if (keyboard_check(ord("E"))){
			if (myTextBox == noone){
				myTextBox = instance_create_layer(x-100, y-220, "Text_and_interactions", obj_TextBox)
				myTextBox.texto_ = myText;
			}
		}
		
		if (keyboard_check(ord("W"))){	
			room_goto(destino);
			obj_Player.x = xx;
			obj_Player.y = yy;	
		}

}else{
	if(myTextBox != noone){
		instance_destroy(myTextBox);
		myTextBox = noone;
	}
}