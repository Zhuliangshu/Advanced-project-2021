///@function tbyGetBoxWidth()
///@desc Returns the computated current width of the textbox, including the frame
function tbyGetBoxWidth() {

	with (tbyM()) {
		return min(currentWidth, maxWidth)+tbyTileSize*2;
	}


}
