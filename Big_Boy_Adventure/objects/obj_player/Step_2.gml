/// @description  update animations based on states

/// Animation transitions 

switch (myState) { 

    case state.ASLEEP: 
        if (sprite_index != spriteAsleep) { 
            scr_changeSprite(spriteAsleep); 
        }
        break;
    case state.IDLE: // switch to idle animation
        if (sprite_index != spriteWake && sprite_index != spriteIdle ) {
            if (sprite_index == spriteAsleep || sprite_index == spriteDie) { 
                scr_changeSprite(spriteWake); 
            }
            else { 
                scr_changeSprite(spriteIdle); 
            }
        }
        break;  
    case state.WALK:
        if (sprite_index != spriteWalk) { 
            scr_changeSprite(spriteWalk); 
        }
        break;
    case state.ATTACK:
        if (sprite_index != spriteAttack) { 
            scr_changeSprite(spriteAttack); 
        }
        break;
    case state.HURT:
        if (sprite_index != spriteHurt) { 
            scr_changeSprite(spriteHurt); 
        }
        break;
    case state.DIE: 
        if (sprite_index != spriteDie) { 
            scr_changeSprite(spriteDie); 
        }
        break;
}

// freeze sprite at end of animation (can't do it in animation end because at that point it's reset to 0
if (myState == state.ASLEEP || myState == state.DIE) { 
    if (image_index == image_number - 1) {
        image_speed = 0; 
    }
}




