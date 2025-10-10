global.current_score = global.score;

if (!global.resetting_highscore && global.current_score > global.high_score) {
    global.high_score = global.current_score;
    ini_open("highscore.ini");
    ini_write_real("Scores", "HighScore", global.high_score);
    ini_close();
}

// Reset the flag in case it was set
global.resetting_highscore = false;