if(instance_exists(obj_Player)){

	draw_sprite_ext(spr_BackStamina, 1, 35, 10, 4.75, 1, 0, c_ltgray, 1);
	draw_sprite_ext(spr_Stamina, 1, 40, 15, max(0, obj_Player.stamina/10), 1, 0, c_ltgray, 1);

}