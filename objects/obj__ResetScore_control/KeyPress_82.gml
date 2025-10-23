global.resetting_highscore = true;

audio_play_sound(HighscoreWipe, 1, false);

global.high_score = 0;

ini_open("highscore.ini");
ini_write_real("Scores", "HighScore", 0);
ini_close();

room_goto(rm_GameOver);
