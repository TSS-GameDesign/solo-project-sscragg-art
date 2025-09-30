draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fnt_highscore);
draw_text(room_width / 2, room_height / 2 - 50, "GAME OVER");
draw_text(room_width / 2, room_height / 2, "Your Score: " + string(global.current_score));
draw_text(room_width / 2, room_height / 2 + 50, "High Score: " + string(global.high_score));
draw_text(room_width / 2, room_height / 2 + 100, "Press SPACE to restart");