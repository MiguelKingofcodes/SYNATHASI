// Configurando casos de Colisão...

// Colisão Down
var groundCollision = instance_place(x, y+vel_Vertical, obj_Ground);

if (groundCollision){
	vel_Vertical = 0;
}else{
	y += vel_Vertical;
}