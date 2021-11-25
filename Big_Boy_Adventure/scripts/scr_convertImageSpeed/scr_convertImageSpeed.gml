/// @description  scr_convertImageSpeed(originalFPS, targetImageSpeed) 
/// @param originalFPS
/// @param  targetImageSpeed
/// script to compensate for animation/game framerate discrepancy
/// returns real 
function scr_convertImageSpeed(argument0, argument1) {

	return (argument0/room_speed) * argument1; 



}
