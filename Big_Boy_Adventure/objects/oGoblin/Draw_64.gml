/// @DnDAction : YoYo Games.Drawing.Draw_Healthbar
/// @DnDVersion : 1
/// @DnDHash : 3FDA7084
/// @DnDArgument : "x1_relative" "1"
/// @DnDArgument : "y1_relative" "1"
/// @DnDArgument : "x2" "50"
/// @DnDArgument : "x2_relative" "1"
/// @DnDArgument : "y2" "3"
/// @DnDArgument : "y2_relative" "1"
/// @DnDArgument : "direction" "2"
/// @DnDArgument : "value" "150"
/// @DnDArgument : "backcol" "$FF7F7F7F"
/// @DnDArgument : "barcol" "$FF000000"
/// @DnDArgument : "mincol" "$FF9999FF"
/// @DnDArgument : "maxcol" "$FF2B88E5"
draw_healthbar(x + 0, y + 0, x + 50, y + 3, 150, $FF7F7F7F & $FFFFFF, $FF9999FF & $FFFFFF, $FF2B88E5 & $FFFFFF, 2, (($FF7F7F7F>>24) != 0), (($FF000000>>24) != 0));