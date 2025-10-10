// Get tilemap (only need to do this once, but for simplicity, it's here)
var tile_layer_id = layer_get_id("Tiles_3");
var tilemap = layer_tilemap_get_id(tile_layer_id);

// Store old position
var old_x = x;
var old_y = y;

// Move bullet
x += lengthdir_x(speed, direction);
y += lengthdir_y(speed, direction);

// Check collision with wall tiles
if (tilemap_get_at_pixel(tilemap, x, y) != 0) {
    // Hit wall - determine how to bounce
    
    // Check horizontal collision
    if (tilemap_get_at_pixel(tilemap, old_x, y) != 0) {
        direction = 360 - direction; // Reflect vertically
        y = old_y; // revert Y
    }
    
    // Check vertical collision
    else if (tilemap_get_at_pixel(tilemap, x, old_y) != 0) {
        direction = 180 - direction; // Reflect horizontally
        x = old_x; // revert X
    }
    
    // Optional: limit bounces or destroy after X ricochets
    // bounce_count += 1;
    // if (bounce_count >= MAX_BOUNCES) instance_destroy();
}