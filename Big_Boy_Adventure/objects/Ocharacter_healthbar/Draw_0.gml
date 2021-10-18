/// @DnDAction : YoYo Games.Drawing.Draw_Healthbar
/// @DnDVersion : 1
/// @DnDHash : 0C960514
/// @DnDArgument : "x1_relative" "1"
/// @DnDArgument : "y1_relative" "1"
/// @DnDArgument : "x2" "100"
/// @DnDArgument : "x2_relative" "1"
/// @DnDArgument : "y2" "15"
/// @DnDArgument : "y2_relative" "1"
/// @DnDArgument : "backcol" "$C7000000"
/// @DnDArgument : "barcol" "$FF123960"
/// @DnDArgument : "mincol" "$FFFFFFFF"
/// @DnDArgument : "maxcol" "$FF0000FF"
draw_healthbar(x + 0, y + 0, x + 100, y + 15, 100, $C7000000 & $FFFFFF, $FFFFFFFF & $FFFFFF, $FF0000FF & $FFFFFF, 0, (($C7000000>>24) != 0), (($FF123960>>24) != 0));