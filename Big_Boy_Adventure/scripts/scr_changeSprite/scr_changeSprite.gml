/// @description  scr_changeSprite(index)
/// @param index
/// image indices don't reset by default when you update sprite_index, meaning animations don't always play completely 
/// also if image was frozen e.g. during death animation, resets playback at full speed 
function scr_changeSprite(argument0) {

	sprite_index = argument0; 
	image_index = 0; // force animation to play from beginning
	image_speed = scr_convertImageSpeed(animationFPS, 1);  // play back at full speed 





}
