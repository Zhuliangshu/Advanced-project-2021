/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 486A7891
/// @DnDArgument : "code" "y += 30;"
y += 30;

/// @DnDAction : YoYo Games.Rooms.Go_To_Room
/// @DnDVersion : 1
/// @DnDHash : 4532A193
/// @DnDArgument : "room" "asset_get_index(other.room_name)"
room_goto(asset_get_index(other.room_name));