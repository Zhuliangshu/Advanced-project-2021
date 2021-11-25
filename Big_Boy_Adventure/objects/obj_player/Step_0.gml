/// @description  update states, positions

// states







/*
if (keyboard_check_pressed(vk_down)) { 
    myState = state.ASLEEP; 
}

if (keyboard_check_pressed(vk_up)) { 
    if (myState == state.ASLEEP || myState == state.DIE) { 
        myState = state.IDLE; 
    }
}

if (keyboard_check(vk_left) || keyboard_check(vk_right)) { 
    if (myState != state.ASLEEP && myState != state.ATTACK && myState != state.HURT && myState != state.DIE) { 
        myState = state.WALK; 
    }
}
else if (myState == state.WALK) { 
    myState = state.IDLE;
}

if (keyboard_check_pressed(ord("Z"))) { 
    if (myState != state.ASLEEP && myState != state.HURT && myState != state.DIE) { 
        myState = state.ATTACK; 
    }
}
if (keyboard_check_pressed(ord("X"))) { 
    if (myState != state.ASLEEP && myState != state.ATTACK && myState != state.DIE) { 
        myState = state.HURT; 
    }
}
if (keyboard_check_pressed(ord("C"))) { 
    myState = state.DIE; 
}


// positions

// update orientation, position 
if (myState = state.WALK) { 
    if (keyboard_check_pressed(vk_left)) { 
        image_xscale = -1 * abs(image_xscale); 
    }
    else if (keyboard_check_pressed(vk_right)) { 
        image_xscale = abs(image_xscale); 
    }
    
    var rate = 4; // 4px per step
    
    x += image_xscale/abs(image_xscale) * rate;  
}

