has_shot = false;
move_speed = 1;

tilemap = -1;

hp = 20;
hp_total = hp;

text_x = 100;
text_y = 70;

if (!variable_instance_exists(id, "tilemap") || tilemap == -1) {
    tilemap = layer_tilemap_get_id("Tiles_3");
}