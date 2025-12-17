audio_play_sound(Transport, 1, false);
audio_play_sound(LightsBuzz, 7, true);

var frames_per_second = room_speed; // Common speeds are 30 or 60
var seconds_to_wait = 10;
alarm[0] = frames_per_second * seconds_to_wait;
