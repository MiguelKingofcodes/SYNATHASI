// Código para controlar a colisão

var _colX, _colY

_colX = instance_place(x+velH, y, obj_Bloco);
_colY = instance_place(x, y+velV, obj_Bloco);

// Direcional


// Horizontal
if (_colX){ 
	
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
	
	sprite_index = spr_FireBallExplode;
	
	instance_destroy(id, true);

}

// Vertical
if (_colY){


	/*// Baixo
	if(velV < 0){
	
		y = _colY.bbox_bottom + (y - bbox_top);
		
	}
	
	// Cima
	if (velV > 0){
	
		y = _colY.bbox_top + (y - bbox_bottom);
	
	}*/
	
	velV = 0;
	
	sprite_index = spr_FireBallExplode;
	
	instance_destroy(id, true);


}


x += velH;
y += velV;
