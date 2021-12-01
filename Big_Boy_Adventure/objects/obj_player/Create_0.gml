/// @description  init vars, states

animationFPS = 30; // this is the framerate at which the SWF file was animated; it's also the framerate of the raster images. It may or may not match your game's framerate.

// Call the function scr_convertImageSpeed(originalFPS, targetImageSpeed) to compensate for animation/game framerate discrepancy  
// 
// e.g. play a 30FPS animation back at half-speed in a 60FPS game: 
// image_speed = scr_convertImageSpeed(30, 0.5); 
alarm[0] = 60;
enum state { 
    ASLEEP,
    IDLE,
    WALK,
    ATTACK,
    HURT,
    DIE
}
boss_life = 10;
myState = state.ASLEEP; 

//image_speed = scr_convertImageSpeed(animationFPS, 1);  // play back at full speed 


// sprite vars (you can change these depending on the resolution/format you want to use)

spriteAsleep = spr_fuzzball_sleep_raster_128; 
spriteWake = spr_fuzzball_wake_raster_128; 
spriteIdle = spr_fuzzball_idle_raster_128; 
spriteWalk = spr_fuzzball_walk_raster_128; 
spriteAttack = spr_fuzzball_attack_raster_128; 
spriteHurt = spr_fuzzball_hurt_raster_128; 
spriteDie = spr_fuzzball_die_raster_128; 



// Vector sprites
/*
spriteAsleep = spr_fuzzball_sleep;
spriteWake = spr_fuzzball_wake;
spriteIdle = spr_fuzzball_idle;
spriteWalk = spr_fuzzball_walk;
spriteAttack = spr_fuzzball_attack;
spriteHurt = spr_fuzzball_hurt;
spriteDie = spr_fuzzball_die;
*/

/* */
/*  */
