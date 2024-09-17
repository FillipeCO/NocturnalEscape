// código que roda quando a room é criada

layer_sequence_create("game_start_transition", 0, 0, seq_game_start);

audio_stop_sound(snd_menu_song)
audio_play_sound(snd_song1, 1, 1, 0.5);

global.game_over = false;

