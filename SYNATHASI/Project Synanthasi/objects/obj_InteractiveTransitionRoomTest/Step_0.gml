// Identificar a passagem do player para a próxima Room
// Vai obter as informações do player e então ir para a próxima room..;


var _colPlayer = instance_place(x+1, y, obj_PlayerTeste1);


// O Player vai sempre passar para a próxima "Room" na mesma altura que estava na anterior...
if (_colPlayer){
	
	
	if (keyboard_check(ord("E"))){	
		if (myTextBox == noone){
			myTextBox = instance_create_layer(20, 10, "TextAndInteractions", obj_TextBoxTest);
			myTextBox.texto_ = text;
		}
	}
	
	
	// Ao player entrar em contato com o ob
	if(keyboard_check_pressed(ord("W"))){
	
		// O jogador vai aparecer na próxima Room no mesmo y que saiu da anterior...
		if(playerDefineY){
			yy = obj_PlayerTeste1.y;
		}
		room_goto(destino);
		obj_PlayerTeste1.x = xx;
		obj_PlayerTeste1.y = yy;
		// obj_Npc.x = xx;
	
	
	}
	
}else{

	if(myTextBox != noone){
		instance_destroy(myTextBox);
		myTextBox = noone;
	}

}
