/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 486A7891
/// @DnDArgument : "code" "y += 30;$(13_10)$(13_10)$(13_10)room_next_x = other.next_x;$(13_10)room_next_y = other.next_y;"
y += 30;


room_next_x = other.next_x;
room_next_y = other.next_y;

/// @DnDAction : YoYo Games.Rooms.Go_To_Room
/// @DnDVersion : 1
/// @DnDHash : 4532A193
/// @DnDArgument : "room" "asset_get_index(other.room_name)"
room_goto(asset_get_index(other.room_name));