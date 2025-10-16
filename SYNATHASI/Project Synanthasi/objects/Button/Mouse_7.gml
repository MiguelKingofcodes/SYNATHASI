if(typeButton == "Start"){

	room_goto(FlorestaInicial);

}else if(typeButton == "Again"){

	room_goto(FlorestaInicial);
	obj_PlayerTeste1.hp = 10;
	obj_PlayerTeste1.x = 160;
	obj_PlayerTeste1.y = 640;
	obj_PlayerTeste1.died = false;

}