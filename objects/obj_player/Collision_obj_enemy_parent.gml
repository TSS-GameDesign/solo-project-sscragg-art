if (alarm[0] < 0)
{
    hp -= other.damage;
    alarm[0] = 60;
    image_blend = c_red;
    audio_play_sound(HitSFX, 1, false);
    
    if (hp <- 0)
{
    audio_stop_sound(EnemyApproaching);
global.came_from_gameplay = true
room_goto(rm_GameOver);
}
    
}