var current_width = (global.hp / global.max_hp) * global.bar_width;

// Draw the background rectangle (e.g., black)
draw_set_color(c_black);
draw_rectangle(global.bar_x, global.bar_y, global.bar_x + global.bar_width, global.bar_y + global.bar_height, false);

// Draw the foreground rectangle (e.g., red)
draw_set_color(c_red);
draw_rectangle(global.bar_x, global.bar_y, global.bar_x + current_width, global.bar_y + global.bar_height, false);

// Reset draw color
draw_set_color(c_white);