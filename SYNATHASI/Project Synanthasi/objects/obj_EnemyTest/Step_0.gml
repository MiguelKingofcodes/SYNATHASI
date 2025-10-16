// Inherit the parent event
event_inherited();
velV += .5;
if(obj_PlayerTeste1.x > x){

	velH = 2;

}else{

	velH = -2;

}

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

