/// @DnDAction : YoYo Games.Drawing.Draw_Healthbar
/// @DnDVersion : 1
/// @DnDHash : 3EFDAD39
/// @DnDArgument : "x1_relative" "1"
/// @DnDArgument : "y1_relative" "1"
/// @DnDArgument : "x2" "40"
/// @DnDArgument : "x2_relative" "1"
/// @DnDArgument : "y2" "3"
/// @DnDArgument : "y2_relative" "1"
/// @DnDArgument : "direction" "2"
/// @DnDArgument : "value" "75"
/// @DnDArgument : "backcol" "$FF4C4C4C"
/// @DnDArgument : "barcol" "$FF000000"
/// @DnDArgument : "mincol" "$FF4C4CFF"
/// @DnDArgument : "maxcol" "$FF123960"
draw_healthbar(x + 0, y + 0, x + 40, y + 3, 75, $FF4C4C4C & $FFFFFF, $FF4C4CFF & $FFFFFF, $FF123960 & $FFFFFF, 2, (($FF4C4C4C>>24) != 0), (($FF000000>>24) != 0));