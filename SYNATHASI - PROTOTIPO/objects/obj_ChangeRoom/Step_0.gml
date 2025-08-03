// Identificar a passagem do player para a próxima Room
// Vai obter as informações do player e então ir para a próxima room..;


var _colPlayer = instance_place(x+1, y, obj_Player);

// O Player vai sempre passar para a próxima "Room" na mesma altura que estava na anterior...
if (_colPlayer){
	
	// O jogador vai aparecer na próxima Room no mesmo y que saiu da anterior...
	if(playerDefineY){
		yy = obj_Player.y;
	}
	room_goto(destino);
	obj_Player.x = xx;
	obj_Player.y = yy;
	
}
