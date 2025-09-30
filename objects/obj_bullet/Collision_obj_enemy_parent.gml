 instance_destroy(); // Destroys the bullet
    with (other) {
        hp -= 1; // Assuming 'hp' is a variable in the enemy object
        if (hp <= 0) {
            instance_destroy(); // Destroy enemy if HP reaches zero
                global.score += 10; // Adds 10 to the score
        }
    }
