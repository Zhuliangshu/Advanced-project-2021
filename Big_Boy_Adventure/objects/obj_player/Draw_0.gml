/// @description  some debug

// draw_sprite_ext(mask_index,0,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha); 

draw_self(); 

var str = ""; 

switch (myState) { 
    case state.ASLEEP:
        str = "asleep";
        break; 
    case state.IDLE:
        str = "idle";
        break;
    case state.WALK:
        str = "walk";
        break;
    case state.ATTACK:
        str = "attack";
        break;
    case state.HURT:
        str = "hurt"; 
        break;
    case state.DIE:
        str = "die"; 
        break;
}

//draw_text(32,32,string_hash_to_newline("state: "+str+"##Use arrow keys and Z, X, C."));  

