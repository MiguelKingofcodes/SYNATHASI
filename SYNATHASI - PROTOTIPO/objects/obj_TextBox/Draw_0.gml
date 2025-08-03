

// Desenha Caixa de Texto
draw_sprite(spr_TextoTeste, 0, x, y);
//Desenha Texto
draw_set_font(txtFont);
draw_set_color(txtColor);
draw_text_ext(x, y, texto_[page], stringHeight, boxWidth);

