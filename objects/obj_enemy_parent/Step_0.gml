var _hor = clamp(target_x - x, -1, 1);
var _ver = clamp(target_y - y, -1, 1);

move_and_collide(_hor * move_speed, _ver * move_speed, [tilemap, obj_enemy_parent]);

if (x != xprevious || y != yprevious) {
    image_speed = 1;
} else {
    image_speed = 0;
    image_index = 0;
}