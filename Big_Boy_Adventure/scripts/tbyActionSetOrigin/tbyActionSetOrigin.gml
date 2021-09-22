///@function tbyActionSetOrigin(x, y)
///@desc This should not be called manually
///@param originX
///@param originY
function tbyActionSetOrigin(argument0, argument1) {

	// This sets the bottom-middle, bottom point

	var m = tbyM();

	m.positionUpdate = [TbyPositionUpdateType.Origin,
						argument0, argument1]
	m.speaker = noone;


}
