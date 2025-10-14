if(instance_exists(obj_PlayerTeste1) && !instance_exists(obj_TextBoxTest)){

	//draw_sprite_ext(spr_BackStamina, 1, 40, 40, 50, 1, 0, c_ltgray, 1);
	draw_sprite_ext(spr_Stamina, 
	1, 
	40, 
	80, 
	(obj_PlayerTeste1.stamina/5), 
	1, 
	0, 
	c_ltgray, 
	1);
	
	draw_sprite_ext(spr_HealthPoints, 
	1, 
	40, 
	40, 
	(obj_PlayerTeste1.hp*5), 
	1, 
	0, 
	c_ltgray, 
	1);
	
	draw_sprite_ext(spr_ManaPoints, 
	1, 
	40, 
	60, 
	(obj_PlayerTeste1.mp*2), 
	1, 
	0, 
	c_ltgray, 
	1);

}