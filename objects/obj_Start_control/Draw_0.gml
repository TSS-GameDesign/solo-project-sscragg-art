draw_set_font(font_current);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);

var shake_x = 0;
var shake_y = 0;

if (flickering) {
    shake_x = irandom_range(-2, 2);
    shake_y = irandom_range(-2, 2);
}

draw_text((room_width div 2) + shake_x, (room_height div 2) + shake_y, "SHOOT GAME");
draw_text(room_width / 2, room_height / 2 + 100, "Press ENTER to begin!");
draw_text(room_width / 2, room_height / 2 + 150, "Press SHIFT to learn how to play");