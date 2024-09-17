/// @description Insert description here
// You can write your code in this editor
// Definir a duração total da animação (120 frames no caso)
var _total_time = 60;

// Aumentar e diminuir a transparência de forma gradual
// Vai de 0 (transparente) até 1 (opaco) e volta para 0
image_alpha = 0.2 + 0.2 * sin(((alarm[0] / _total_time) * pi));

// Opcional: garantir que a alpha fique entre 0 e 1
image_alpha = clamp(image_alpha, 0, 1);