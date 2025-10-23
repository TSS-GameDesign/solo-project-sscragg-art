has_shot = false;
move_speed = 1;



hp = 20;
hp_total = hp;

text_x = 100;
text_y = 70;

tilemap = layer_tilemap_get_id("Tiles_3");

if (tilemap_get_at_pixel(tilemap, x_next, y_next) != 0) {
    // collision
}