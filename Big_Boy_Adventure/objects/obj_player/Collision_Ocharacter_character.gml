/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 751CF1E4
/// @DnDArgument : "code" "if( boss_life <= 0){$(13_10)myState = state.DIE;$(13_10)}$(13_10)if (keyboard_check_pressed(vk_space) && myState!=state.DIE) { $(13_10)    myState = state.HURT;$(13_10)	life -= 1;$(13_10)}else{$(13_10)	myState = state.ATTACK;$(13_10)	NewCharacter.currentHealth -=1;$(13_10)}"
if( boss_life <= 0){
myState = state.DIE;
}
if (keyboard_check_pressed(vk_space) && myState!=state.DIE) { 
    myState = state.HURT;
	life -= 1;
}else{
	myState = state.ATTACK;
	NewCharacter.currentHealth -=1;
}