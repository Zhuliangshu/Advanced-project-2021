/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Released
/// @DnDVersion : 1
/// @DnDHash : 3F02610F
/// @DnDArgument : "key" "vk_down"
var l3F02610F_0;
l3F02610F_0 = keyboard_check_released(vk_down);
if (l3F02610F_0)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 308207D5
	/// @DnDParent : 3F02610F
	/// @DnDArgument : "spriteind" "atk_down"
	sprite_index = atk_down;
	image_index = 0;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Released
/// @DnDVersion : 1
/// @DnDHash : 1F1865C4
/// @DnDArgument : "key" "vk_right"
var l1F1865C4_0;
l1F1865C4_0 = keyboard_check_released(vk_right);
if (l1F1865C4_0)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 6A259EF6
	/// @DnDParent : 1F1865C4
	/// @DnDArgument : "spriteind" "atk_right"
	sprite_index = atk_right;
	image_index = 0;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Released
/// @DnDVersion : 1
/// @DnDHash : 7640393C
/// @DnDArgument : "key" "vk_up"
var l7640393C_0;
l7640393C_0 = keyboard_check_released(vk_up);
if (l7640393C_0)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 1D7791B6
	/// @DnDParent : 7640393C
	/// @DnDArgument : "spriteind" "atk_up"
	sprite_index = atk_up;
	image_index = 0;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Released
/// @DnDVersion : 1
/// @DnDHash : 68A099AE
/// @DnDArgument : "key" "vk_left"
var l68A099AE_0;
l68A099AE_0 = keyboard_check_released(vk_left);
if (l68A099AE_0)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 0C8299D3
	/// @DnDParent : 68A099AE
	/// @DnDArgument : "spriteind" "atk_left"
	sprite_index = atk_left;
	image_index = 0;
}