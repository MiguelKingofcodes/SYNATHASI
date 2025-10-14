_direction = "frente";

velH = 0;
velV = 0

velocidade = 5
gravidade = .3


if(obj_PlayerTeste1.last_direction == "frente"){
	
	velH = 20;
	velV = 0;

	
	
}else if(obj_PlayerTeste1.last_direction == "atras"){

	velH = -20;
	velV = 0;


}else if(obj_PlayerTeste1.last_direction == "baixo"){

	velV = 20;
	velH = 0;


}else if(obj_PlayerTeste1.last_direction == "cima"){

	velV = -20;
	velH = 0;


}


