///@function tbyLog(strings)
///@param strings
function tbyLog() {

	var s = "";

	for (var i = 0; i < argument_count; i++) {
		s += string(argument[i]) + " | ";
	}

	show_debug_message("[TBY] " + s);


}
