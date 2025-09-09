
velH = 5;
var _colPlayerPositive = instance_place(x+10, y, obj_Player);
var _colPlayerNegative = instance_place(x-10, y, obj_Player);

if(obj_Player.x >= x && !_colPlayerPositive){

	x += velH;
	//sprite_index = spr_Player;
	image_xscale = 1;

}else if(obj_Player.x <= x && !_colPlayerNegative){

	x -= velH;
	//sprite_index = spr_Player;
	image_xscale = -1;
	
}else if(instance_place(x-5, y, obj_Player) || instance_place(x+5, y, obj_Player)){
	
		obj_Player.InDialog = !obj_Player.InDialog;
		if (keyboard_check(ord("E"))){	
			if (myTextBox == noone){
					myTextBox = instance_create_layer(10, 15, "Text_and_interactions", obj_TextBox)
					myTextBox.texto_ = npcText;
			}
		
			if(keyInteraction){
		
				if(keyboard_check(ord("Y"))){
			
					obj_Player.PlayerInventory = "Rosa das Damas Eldred";
				
				}
		
			}
		
		}
	
	}else{
	if(myTextBox != noone){
		instance_destroy(myTextBox);
		obj_Player.InDialog = !obj_Player.InDialog;
		myTextBox = noone;
	}
}
	
/*	//sprite_index = spr_PLayerParado;

}else{

	//sprite_index = spr_PLayerParado;

}*/
