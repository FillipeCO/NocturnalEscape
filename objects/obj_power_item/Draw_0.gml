// Desenhar o sprite
draw_self();

// Desenhar o ícone do sprite
draw_sprite(spr_collectible_icon, 0, x - 30, y - (sprite_height / 2) - 20);

// Definir o alinhamento do texto para o centro
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Desenhar o texto de custo (centralizado acima do sprite)
draw_text(x, y - (sprite_height / 2) - 20, string(cost));

// Desenhar o outro texto (centralizado abaixo do sprite)
draw_text(x, y + (sprite_height / 2) + 20, text);

// Restaurar alinhamento de texto para a esquerda (valor padrão)
draw_set_halign(fa_left);
draw_set_valign(fa_top);
