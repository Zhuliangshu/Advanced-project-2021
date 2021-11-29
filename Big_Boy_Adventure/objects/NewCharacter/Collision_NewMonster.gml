/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 155C40CE
/// @DnDArgument : "expr" "vk_space"
/// @DnDArgument : "not" "1"
if(!(vk_space))
{
	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 2AA623AD
	/// @DnDParent : 155C40CE
	/// @DnDArgument : "steps" "1"
	alarm_set(0, 1);
}