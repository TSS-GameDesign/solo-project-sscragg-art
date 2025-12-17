var _hor = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var _ver = keyboard_check(ord("S")) - keyboard_check(ord("W"));

var x_next = x + _hor * move_speed;
var y_next = y + _ver * move_speed;

if (tilemap_get_at_pixel(tilemap, x_next, y) == 0) {
    x = x_next;
}

if (tilemap_get_at_pixel(tilemap, x, y_next) == 0) {
    y = y_next;
}

if (_hor != 0 || _ver != 0)
{
    if (_ver > 0) sprite_index = spr_player_walk_down;
    else if (_ver < 0) sprite_index = spr_player_walk_up;
    else if (_hor > 0) sprite_index = spr_player_walk_right;
    else if (_hor < 0) sprite_index = spr_player_walk_left;
}
else 
{
    if (sprite_index == spr_player_walk_right) sprite_index = spr_player_idle_right;
    else if (sprite_index == spr_player_walk_left) sprite_index = spr_player_idle_left;
    else if (sprite_index == spr_player_walk_up) sprite_index = spr_player_idle_up;
    else if (sprite_index == spr_player_walk_down) sprite_index = spr_player_idle_down;
}
if (mouse_check_button_pressed(mb_left)) { 
    var bullet = instance_create_layer(x, y, "Instances_1", obj_bullet); 
    var angle = point_direction(x, y, mouse_x, mouse_y);
    bullet.direction = angle; 
    bullet.speed = 12;
    audio_play_sound(BulletShoot, 1, false);
}
