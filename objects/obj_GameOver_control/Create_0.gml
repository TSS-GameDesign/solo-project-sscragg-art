global.current_score = global.score; // Assuming 'score' is your current game score
if (file_exists("highscore.ini")) {
    ini_open("highscore.ini");
    global.high_score = ini_read_real("Scores", "HighScore", 0);
    ini_close();
} else {
    global.high_score = 0;
}

if (global.current_score > global.high_score) {
    global.high_score = global.current_score;
    ini_open("highscore.ini");
    ini_write_real("Scores", "HighScore", global.high_score);
    ini_close();
}