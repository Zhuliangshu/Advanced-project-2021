/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
/// @DnDVersion : 1.1
/// @DnDHash : 75D1CC0B
/// @DnDArgument : "direction" "0"
direction = 0;

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 7A3FA308
/// @DnDArgument : "speed" "0.5"
speed = 0.5;

/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 3E2F2522
/// @DnDArgument : "imageind" "5"
/// @DnDArgument : "imageind_relative" "1"
/// @DnDArgument : "spriteind" "bat"
/// @DnDSaveInfo : "spriteind" "bat"
sprite_index = bat;
image_index += 5;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1A6C9A7A
/// @DnDArgument : "var" "x"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "1900"
if(x > 1900)
{

}

/// @DnDAction : YoYo Games.Movement.Set_Direction_Random
/// @DnDVersion : 1.1
/// @DnDHash : 6CCFF2C3
/// @DnDArgument : "direction" "135"
direction = choose(135);