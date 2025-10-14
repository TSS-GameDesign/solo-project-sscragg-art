var tile_layer_id = layer_get_id("Tiles_3");
var tilemap = layer_tilemap_get_id(tile_layer_id);

var old_x = x;
var old_y = y;

var dx = lengthdir_x(speed, direction);
var dy = lengthdir_y(speed, direction);

x += dx;
y += dy;

direction = point_direction(0, 0, dx, dy);
image_angle = direction;

if (tilemap_get_at_pixel(tilemap, x, y) != 0) {
    
    
    if (tilemap_get_at_pixel(tilemap, old_x, y) != 0) {
        direction = 360 - direction;
        y = old_y;
    }
    
    else if (tilemap_get_at_pixel(tilemap, x, old_y) != 0) {
        direction = 180 - direction;
        x = old_x;
    }
    
    image_angle = direction;
    
    bounce_count += 1;
    if (bounce_count >= MAX_BOUNCES) instance_destroy();
}