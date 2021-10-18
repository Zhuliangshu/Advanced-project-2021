/// @DnDAction : YoYo Games.Drawing.Draw_Healthbar
/// @DnDVersion : 1
/// @DnDHash : 73AFDC6F
/// @DnDArgument : "x1_relative" "1"
/// @DnDArgument : "y1_relative" "1"
/// @DnDArgument : "x2" "40"
/// @DnDArgument : "x2_relative" "1"
/// @DnDArgument : "y2" "3"
/// @DnDArgument : "y2_relative" "1"
/// @DnDArgument : "direction" "2"
/// @DnDArgument : "value" "200"
/// @DnDArgument : "backcol" "$FF000000"
/// @DnDArgument : "mincol" "$FF6565FF"
/// @DnDArgument : "maxcol" "$FFB2B2FF"
draw_healthbar(x + 0, y + 0, x + 40, y + 3, 200, $FF000000 & $FFFFFF, $FF6565FF & $FFFFFF, $FFB2B2FF & $FFFFFF, 2, (($FF000000>>24) != 0), (($FFFFFFFF>>24) != 0));