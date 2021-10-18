/// @DnDAction : YoYo Games.Drawing.Draw_Healthbar
/// @DnDVersion : 1
/// @DnDHash : 745FFC01
/// @DnDArgument : "x1_relative" "1"
/// @DnDArgument : "y1_relative" "1"
/// @DnDArgument : "x2" "40"
/// @DnDArgument : "x2_relative" "1"
/// @DnDArgument : "y2" "3"
/// @DnDArgument : "y2_relative" "1"
/// @DnDArgument : "direction" "2"
/// @DnDArgument : "backcol" "$FF666666"
/// @DnDArgument : "barcol" "$FF000000"
/// @DnDArgument : "mincol" "$FF9999FF"
/// @DnDArgument : "maxcol" "$FF59B200"
draw_healthbar(x + 0, y + 0, x + 40, y + 3, 100, $FF666666 & $FFFFFF, $FF9999FF & $FFFFFF, $FF59B200 & $FFFFFF, 2, (($FF666666>>24) != 0), (($FF000000>>24) != 0));