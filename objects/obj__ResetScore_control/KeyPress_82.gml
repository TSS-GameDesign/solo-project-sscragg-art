global.resetting_highscore = true;

global.high_score = 0;

ini_open("highscore.ini");
ini_write_real("Scores", "HighScore", 0);
ini_close();

room_goto(rm_GameOver);
