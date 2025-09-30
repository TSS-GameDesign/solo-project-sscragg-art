if (keyboard_check_pressed(vk_space)) {
    global.score = 0; // Reset score for a new game
    room_goto(Room1); // Go back to your main game room
}