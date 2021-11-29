/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 668DFFE9
/// @DnDArgument : "var" "global.danger"
/// @DnDArgument : "not" "1"
if(!(global.danger == 0))
{
	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 1B2AE579
	/// @DnDParent : 668DFFE9
	/// @DnDArgument : "var" "m_character_hp"
	global.m_character_hp = 0;
}