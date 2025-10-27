if (keyboard_check_pressed(vk_space)) {
    global.score = 0;
    room_goto(Room1);
    audio_play_sound(EnemyApproaching, 1, true);
}