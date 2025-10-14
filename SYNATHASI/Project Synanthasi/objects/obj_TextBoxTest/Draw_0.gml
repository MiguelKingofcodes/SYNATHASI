// Desenha Caixa de Texto
draw_sprite(spr_TextBoxTest, 0, x, y);
//Desenha Texto
draw_set_font(txtFont);
draw_set_color(txtColor);

draw_text_ext(x+20, y+20, texto_[page], stringHeight, boxWidth);

