var heal_cost = 10;
var heal_amount = 5;

// Only heal if player has enough score
if (global.score >= heal_cost) {
    // Spend the points
    global.score -= heal_cost;
    
    // Heal the player, but don’t exceed max HP
    hp = min(hp + heal_amount, hp_total);
    
    audio_play_sound(HealSFX, 1, false);
}