
/*velH = 5;
var _colPlayerPositive = instance_place(x+100, y, obj_Player);
var _colPlayerNegative = instance_place(x-100, y, obj_Player);

if(obj_Player.x < x-50){

	x += velH;
	//sprite_index = spr_Player;
	image_xscale = 1;

}else if(obj_Player.x < x+50){

	x -= velH;
	//sprite_index = spr_Player;
	image_xscale = -1;
	
}else /*if (obj_Player.x == x+100)*/{

	//sprite_index = spr_PLayerParado;

}//else{

	//sprite_index = spr_PLayerParado;

//}*/

// Velocidade de movimento horizontal
velH = 2;

// Garante que o player existe
if (instance_exists(obj_Player)) {

    var dx = obj_Player.x - x; // diferença horizontal

    if (abs(dx) > 70) { // só se tiver uma distância razoável
        if (dx > 0) {
            // Player está à direita
            x += velH;
            image_xscale = 1;
        } else if (dx < 0) {
            // Player está à esquerda
            x -= velH;
            image_xscale = -1;
        }
		
		
    } else {
        // Perto o suficiente → pode colocar sprite parado
        // sprite_index = spr_PlayerParado;
		if(interactive){
		
			if (instance_place(x, y, obj_Player)){
	
				// Checa se já há um texto sendo mostrado...

					if (keyboard_check(ord("E")) || obj_Player.seeingMessage == false){
						obj_Player.seeingMessage = true;
						if (myTextBox == noone){
							myTextBox = instance_create_layer(x - 150, y-150, "Text_and_interactions", obj_TextBox)
							myTextBox.texto_ = npcText;
						}
		
					}
		
			}else{
				if(myTextBox != noone){
					instance_destroy(myTextBox);
					myTextBox = noone;
					obj_Player.seeingMessage = false;
				}
			}
		
		}
    }

}

