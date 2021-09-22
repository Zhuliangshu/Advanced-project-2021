///@function tbyOnQueueBegin()
///@desc Gets called when an action queue is beginning
function tbyOnQueueBegin() {

	/* Implement your callback here */
	tbyLog("Queue Begin");
	global.pause = true;


}
