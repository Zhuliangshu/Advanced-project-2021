///@function tbyReset()
///@desc Resets current execution
function tbyReset() {

	if (!instance_exists(tbyManagerObject)) return -1;

	with (tbyM()) {
		tbyManagerReset;
	}

	// Just destroy, do not trigger DESTROY event
	instance_destroy(tbyTextObject, false);


}
