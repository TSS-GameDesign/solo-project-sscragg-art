if keyboard_check_pressed(vk_enter) {
    room_goto(Room1);
    audio_stop_sound(StartMenu);
    audio_play_sound(SelectSFX, 1, false);
}

if keyboard_check_pressed(vk_shift) {
    room_goto(rm_HowToPlay);
    audio_play_sound(SelectSFX, 1, false);
}

if (flickering) {
    flicker_timer++;

    // Random chance to switch fonts every few frames
    if (irandom_range(0, 2) == 0) {
        font_current = choose(fnt_start_scary, font_final);
    }

    // After flicker duration, lock in the final font
    if (flicker_timer >= flicker_duration) {
        font_current = font_final;
        flickering = false;
    }
}

