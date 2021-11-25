// Do some math
var mm_width = 256;
var mm_height = 256;
var width_ratio = room_width/mm_width;
var height_ratio = room_height/mm_height;

// set color for minimap background
draw_set_colour(c_gray);

// draw minimap background
draw_rectangle(0, 0, mm_width, mm_height, false);

// Draw objects on minimap
with par_impass {
	
	// Make objects on map this color
	draw_set_colour(c_maroon);
	
	// Make trees draw green
	if object_index == oTree_1 
		draw_set_colour(c_green);

	// Draw on minimap if it's not a collision bar
	if object_index != oCollision {
		var xx = x/width_ratio;
		var yy = y/height_ratio;
		var ww = sprite_width/width_ratio;
		var hh = sprite_height/width_ratio;
		draw_rectangle(xx, yy, xx+ww, yy+hh, false);
	}
}

// make character draw blue
draw_set_colour(c_blue);
var xx = x/width_ratio;
var yy = y/height_ratio;
draw_rectangle(xx, yy, xx+3, yy+3, false);

//reset draw color
draw_set_colour(c_white);