///@function tbyActionSetPosition(x, y)
///@desc This should not be called manually
///@param x
///@param y
function tbyActionSetPosition(argument0, argument1) {

	// This sets the top-left corner

	var m = tbyM();

	m.positionUpdate = [TbyPositionUpdateType.TopLeft,
						argument0, argument1]
	m.speaker = noone;


}
