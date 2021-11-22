/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
/// @DnDVersion : 1
/// @DnDHash : 751AD910
/// @DnDArgument : "soundid" "magic_cliffs"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "soundid" "magic_cliffs"
var l751AD910_0 = magic_cliffs;
if (!audio_is_playing(l751AD910_0))
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 39D289CA
	/// @DnDParent : 751AD910
	/// @DnDArgument : "soundid" "magic_cliffs"
	/// @DnDArgument : "loop" "1"
	/// @DnDSaveInfo : "soundid" "magic_cliffs"
	audio_play_sound(magic_cliffs, 0, 1);
}