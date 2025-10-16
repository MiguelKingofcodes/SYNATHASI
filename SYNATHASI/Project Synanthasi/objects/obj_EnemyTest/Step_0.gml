// Inherit the parent event
event_inherited();

// Inimigos não irão entrar dentro um do outro
var _enemyFront = instance_place(x+1, y, obj_EnemyTest);
var _enemyBack = instance_place(x-1, y, obj_EnemyTest);
var _enemyDown = instance_place(x, y+1, obj_EnemyTest);
var _enemyUp = instance_place(x, y-1, obj_EnemyTest);

if(enemyType == "Ground"){

	velV += .5 // Gravidade para inimigos de cão
	if(obj_PlayerTeste1.x > x){

		velH = 2;

	}else{

		velH = -2;
		
	}
	
	
}else if(enemyType == "Flying"){
	
	if(obj_PlayerTeste1.x > x){

		velH = 2;

	}else{

		velH = -2;
		
	}
	
	
	if(obj_PlayerTeste1.y > y){

		velV = 2;

	}else{

		velV = -2;
		
	}


}else if(enemyType == "Shooter"){


}


	
	
	/*if(_enemyFront){
		
		velH = 0
		
	}else if (_enemyBack){
		
		velH = 1
		
	}
	
	if(_enemyUp){
		
		velV = 0
		
	}else if (_enemyDown){
		
		velV = 0
		
	}*/


// Codando morte do inimigo
// Código para controlar a colisão

var _colMagicBallX, _colMagicBallY

_colMagicBallX = instance_place(x+velH, y, obj_TesteFireBall);
_colMagicBallY = instance_place(x, y+velV, obj_TesteFireBall);

// Direcional


// Horizontal
if (_colMagicBallX){ 
	
	/*
	// Esquerda
	if(velH < 0){
	
		x = _colX.bbox_left + (x - bbox_right);
		
	}
	
	// Direita
	if (velH > 0){
	
		x = _colX.bbox_right + (x - bbox_left);
	
	}*/
	
	velH = 0;
	
	instance_destroy(id, true);
	instance_destroy(_colMagicBallX, true);

}

// Vertical
if (_colMagicBallY){


	/*// Baixo
	if(velV < 0){
	
		y = _colY.bbox_bottom + (y - bbox_top);
		
	}
	
	// Cima
	if (velV > 0){
	
		y = _colY.bbox_top + (y - bbox_bottom);
	
	}*/
	
	velV = 0;
	
	instance_destroy(id, true);
	instance_destroy(_colMagicBallY, true);

}

