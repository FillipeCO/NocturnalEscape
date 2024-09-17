/// @description Insert description here
if (global.second_wind && !global.second_wind_used) {
    // O jogador "revive" com a habilidade "second wind"
    global.second_wind_used = true; // Marcar que a habilidade foi usada
    //global.second_wind = false; // Desativar a habilidade após o uso

    // Reviver o jogador (exemplo de reposicionamento ou efeitos)
    x = global.respawn_x; // Define respawn_x previamente
    y = global.respawn_y; // Define respawn_y previamente

    // Adicionar qualquer efeito visual ou sonoro, se necessário
    audio_play_sound(snd_buy_success, 1, 0, 2);
	global.second_wind_used = true;
	global.second_wind_invincible_time = true;
	alarm[2] = 120;

} else {
    // Se "second wind" não estiver disponível, aplicar a lógica de game over
    player_lost();

    if (!global.game_over) {
        audio_play_sound(snd_weaponhit, 1, 0, 2);
        global.game_over = true;

    }
}