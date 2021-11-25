/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0D62DC85
/// @DnDArgument : "code" "with (obj_menu){$(13_10)	text = other.text;$(13_10)}$(13_10)$(13_10)with(obj_menuItem){$(13_10)	instance_destroy();$(13_10)}"
with (obj_menu){
	text = other.text;
}

with(obj_menuItem){
	instance_destroy();
}