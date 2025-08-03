box_x = obj_Player.x;
box_y = obj_Player.y - 200;

var end_message = false;

if (indice < string_length(text_to_show)){
	
	indice += vel_txt;
	

	
}else{
	end_message = true;/*
	vel_txt = .1;
	if (string_ends_with(text_to_show, "_")){
	
		text_to_show = string_delete(text_to_show, indice, 1);
	
	}else{
	
		text_to_show += "_";
	
	}*/
	

}

if(keyboard_check(ord("E")) && !end_message){

	vel_txt = 1;

}else{

	vel_txt = .1;

}

if(keyboard_check(vk_enter)){
	
	object_set_visible(obj_PlayerText, false);
		
}


