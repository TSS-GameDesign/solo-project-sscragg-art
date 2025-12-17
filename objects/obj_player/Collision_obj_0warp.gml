if (other.is_active) {
    room_goto(other.target_room); 
    obj_player.x = other.target_x;
    obj_player.y = other.target_y;
    audio_stop_sound(EnemyApproaching);
}