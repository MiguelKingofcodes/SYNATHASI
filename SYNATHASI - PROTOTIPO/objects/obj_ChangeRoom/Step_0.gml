// Identificar a passagem do player para a próxima Room
// Vai obter as informações do player e então ir para a próxima room..;


var _colPlayer = instance_place(x+1, y, obj_Player);

// O Player vai sempre passar para a próxima "Room" na mesma altura que estava na anterior...
if (_colPlayer){

	yy = obj_Player.y;
	room_goto(destino);
	obj_Player.x = xx;
	obj_Player.y = yy;
	
}
