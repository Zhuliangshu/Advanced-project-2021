/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 143FA9A3
/// @DnDArgument : "code" "newdir=point_direction(x,y,NewCharacter.x,NewCharacter.y);$(13_10)	skeleton_animation_set(b_jump);$(13_10)	speed=1;$(13_10)	direction = newdir;$(13_10)	alarm[0]=60;"
newdir=point_direction(x,y,NewCharacter.x,NewCharacter.y);
	skeleton_animation_set(b_jump);
	speed=1;
	direction = newdir;
	alarm[0]=60;