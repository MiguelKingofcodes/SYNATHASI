// Identificar a passagem do player para a próxima Room
// Vai obter as informações do player e então ir para a próxima room..

// Interatível, o Player precisa clicar em "e" para ir para a sala de destino


var _colPlayer = instance_place(x+1, y, obj_Player);

// O Player vai sempre passar para a próxima "Room" na mesma altura que estava na anterior...
if (_colPlayer){

	obj_PlayerText.text_to_show = "Pressione 'E' para Interagir..."

	if (keyboard_check(ord("E"))){
		
		obj_PlayerText.text_to_show = ""
		
		room_goto(destino);
		obj_Player.x = xx;
		obj_Player.y = yy;
		
	}


	
}