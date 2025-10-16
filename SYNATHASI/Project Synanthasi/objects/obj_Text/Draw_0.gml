draw_self();



draw_set_halign(1);
draw_set_valign(1);
draw_set_font(txtFont);
draw_text(x, y, text);
draw_set_font(-1);
draw_set_halign(-1);
draw_set_valign(-1);