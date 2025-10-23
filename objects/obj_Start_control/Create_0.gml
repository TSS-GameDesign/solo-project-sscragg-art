// Duration of flicker in frames
flicker_duration = 90; // ~1.5 seconds at 60 FPS

// Internal timer
flicker_timer = 0;

// Whether flicker is still active
flickering = true;

// Final font
font_final = fnt_start;

// Current font (starts as Wingdings)
font_current = fnt_start_scary;

if !audio_is_playing(StartMenu) {
    audio_play_sound(StartMenu, 1, true);
}

if (file_exists("highscore.ini")) {
    ini_open("highscore.ini");
    global.high_score = ini_read_real("Scores", "HighScore", 0);
    ini_close();
} else {
    global.high_score = 0;
}
