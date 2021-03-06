/// @func _spread(script, argsArray)
/// @desc Runs a script with the provided array as arguments
/// @param {Script} script The script to run
/// @param {Array} arrayOfArguments An array to provide as individual arguments
/// @return {*} The return value of the script
function tbySpread() {
	/*
	@example
	_spread(add_to_list, [listId, 1, 2, 3, 4]);
	// => List now contains 1, 2, 3, 4
	*/

	// Taken from https://github.com/gm-core/gdash/blob/master/src/scripts/_spread/_spread.gml

	var func = argument[0];

	if (is_undefined(argument[1])) {
	    return script_execute(func);
	} 

	var args = argument[1];
	switch (array_length_1d(args)) {
	  case 1:
	    return script_execute(func, args[@ 0]);
	  case 2:
	    return script_execute(func, args[@ 0], args[@ 1]);
	  case 3:
	    return script_execute(func, args[@ 0], args[@ 1], args[@ 2]);
	  case 4:
	    return script_execute(func, args[@ 0], args[@ 1], args[@ 2], args[@ 3]);
	  case 5:
	    return script_execute(func, args[@ 0], args[@ 1], args[@ 2], args[@ 3], args[@ 4]);
	  case 6:
	    return script_execute(func, args[@ 0], args[@ 1], args[@ 2], args[@ 3], args[@ 4], args[@ 5]);
	  case 7:
	    return script_execute(func, args[@ 0], args[@ 1], args[@ 2], args[@ 3], args[@ 4], args[@ 5], args[@ 6]);
	  case 8:
	    return script_execute(func, args[@ 0], args[@ 1], args[@ 2], args[@ 3], args[@ 4], args[@ 5], args[@ 6], args[@ 7]);
	  case 9:
	    return script_execute(func, args[@ 0], args[@ 1], args[@ 2], args[@ 3], args[@ 4], args[@ 5], args[@ 6], args[@ 7], args[@ 8]);
	  case 10:
	    return script_execute(func, args[@ 0], args[@ 1], args[@ 2], args[@ 3], args[@ 4], args[@ 5], args[@ 6], args[@ 7], args[@ 8], args[@ 9]);
	  case 11:
	    return script_execute(func, args[@ 0], args[@ 1], args[@ 2], args[@ 3], args[@ 4], args[@ 5], args[@ 6], args[@ 7], args[@ 8], args[@ 9], args[@ 10]);
	  case 12:
	    return script_execute(func, args[@ 0], args[@ 1], args[@ 2], args[@ 3], args[@ 4], args[@ 5], args[@ 6], args[@ 7], args[@ 8], args[@ 9], args[@ 10], args[@ 11]);
	  case 13:
	    return script_execute(func, args[@ 0], args[@ 1], args[@ 2], args[@ 3], args[@ 4], args[@ 5], args[@ 6], args[@ 7], args[@ 8], args[@ 9], args[@ 10], args[@ 11], args[@ 12]);
	  case 14:
	    return script_execute(func, args[@ 0], args[@ 1], args[@ 2], args[@ 3], args[@ 4], args[@ 5], args[@ 6], args[@ 7], args[@ 8], args[@ 9], args[@ 10], args[@ 11], args[@ 12], args[@ 13]);
	  case 15:
	    return script_execute(func, args[@ 0], args[@ 1], args[@ 2], args[@ 3], args[@ 4], args[@ 5], args[@ 6], args[@ 7], args[@ 8], args[@ 9], args[@ 10], args[@ 11], args[@ 12], args[@ 13], args[@ 14]);
	}



}
