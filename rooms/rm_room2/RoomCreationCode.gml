global.transition_path = rm_room1;

global.player_hit = false;

global.game_started = false;

global.second_wind_used = false;

audio_stop_sound(snd_song1);

// Verificar se a música de menu já está tocando
if (!audio_is_playing(snd_menu_song)) {
    // Se a música não estiver tocando, inicie a reprodução
    audio_play_sound(snd_menu_song, 1, 1, 0.3);
}

// Criar a sequência de transição do menu
layer_sequence_create("menu_transition", 0, 0, seq_room_menu);