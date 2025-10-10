with (other) {
    instance_destroy();
}

global.score += 10;

instance_destroy();

if (instance_exists(obj_enemy_parent) == false) {
    room_goto(rm_GameOver);
}