global.max_hp = 100;
global.hp = 100;

global.bar_width = 50;
global.bar_height = 5;
global.bar_x = 10;
global.bar_y = 10;

global.current_font = "fnt_GameOver"; // string

if (!variable_global_exists("resetting_highscore")) {
    global.resetting_highscore = false;
}