var cam = view_camera[0];
var cam_w = camera_get_view_width(cam);
var cam_h = camera_get_view_height(cam);

// Get player position
var px = obj_player.x;
var py = obj_player.y;

// Target position centered on player
var tx = px - cam_w / 2;
var ty = py - cam_h / 2;

// Smooth follow
var cx = camera_get_view_x(cam);
var cy = camera_get_view_y(cam);

var nx = lerp(cx, tx, 0.1);
var ny = lerp(cy, ty, 0.1);

// Snap to integer pixels
camera_set_view_pos(cam, round(nx), round(ny));