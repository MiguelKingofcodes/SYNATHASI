
velH = 5;
var _colPlayerPositive = instance_place(x+5, y, obj_Player);
var _colPlayerNegative = instance_place(x-5, y, obj_Player);

if(obj_Player.x > x && !_colPlayerPositive){

	x += velH;
	//sprite_index = spr_Player;
	image_xscale = 1;

}else if(obj_Player.x < x && !_colPlayerNegative){

	x -= velH;
	//sprite_index = spr_Player;
	image_xscale = -1;
	
}else if (obj_Player.x == x){

	//sprite_index = spr_PLayerParado;

}else{

	//sprite_index = spr_PLayerParado;

}
