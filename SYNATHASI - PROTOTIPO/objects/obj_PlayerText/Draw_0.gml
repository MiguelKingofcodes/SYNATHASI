// Evento Draw:

var _texto = string_copy(text_to_show, 0, indice);



// Desenhando a caixa
draw_set_color(box_color);
draw_sprite(spr_Texto1, 0, box_x, box_y);


// Destenhando texto com a cor do texto
draw_set_color(text_color);
if (text_font != -1) draw_set_font(text_font);
draw_text_ext(box_x + margin, box_y + margin, _texto, 10, 240 - margin *2);





