if(keyboard_check_pressed((ord("E")))){
	if (page+1 < array_length(texto_)){
		page += 1
	}else if(page == array_length(texto_)){
		instance_destroy(id);
	}
}