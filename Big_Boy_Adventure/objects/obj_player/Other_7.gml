/// @description  animation transitions 

switch (myState) { 

    case state.ASLEEP: // freeze sprite at last subimage
        // sprite freeze happens in endStep
        break;
    case state.IDLE: // switch to idle animation
        if (sprite_index == spriteWake) {
            scr_changeSprite(spriteIdle); 
        }
        break;  
    case state.WALK:
        break;
    case state.ATTACK:
        myState = state.IDLE;  
        break;
    case state.HURT:
        myState = state.IDLE; 
        break;
    case state.DIE: // freeze on final frame
        // sprite freeze happens in endStep
        break;
}

