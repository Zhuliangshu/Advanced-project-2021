/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6CF3C8C3
/// @DnDArgument : "code" "newdir=point_direction(x,y,Ocharacter_character.x,Ocharacter_character.y);$(13_10)myState = state.WALK;$(13_10)speed=1;$(13_10)direction = newdir;$(13_10)alarm[0]=60;"
newdir=point_direction(x,y,Ocharacter_character.x,Ocharacter_character.y);
myState = state.WALK;
speed=1;
direction = newdir;
alarm[0]=60;