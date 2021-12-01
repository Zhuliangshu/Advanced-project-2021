/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 376291E0
/// @DnDArgument : "code" "if(keyboard_check(vk_space)){$(13_10)	instance_destroy();$(13_10)}else{$(13_10)	NewCharacter.currentHealth -= 1;$(13_10)}"
if(keyboard_check(vk_space)){
	instance_destroy();
}else{
	NewCharacter.currentHealth -= 1;
}