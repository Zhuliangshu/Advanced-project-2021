/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 561C4FE6
/// @DnDArgument : "code" "randomize()$(13_10)$(13_10)//Get the tile layer map and id$(13_10)var _wall_map_id = layer_tilemap_get_id("WallTiles")$(13_10)$(13_10)//Set up grid$(13_10)width_ = room_width div CELL_WIDTH;$(13_10)hetght_ = room_height div CELL_HEIGHT;$(13_10)grid_ = ds_grid_create(width_, hetght_);$(13_10)ds_grid_set_region(grid_, 0, 0, width_, height_, VOID);$(13_10)$(13_10)//Create the controller$(13_10)var _controller_x = width_ div 2$(13_10)var _controller_y = height_ div 2$(13_10)var _controller_direction = irandom(3);$(13_10)var _steps = 400;$(13_10)$(13_10)var _direction_change_odds = 1;$(13_10)$(13_10)repeat(_steps){$(13_10)	grid_[# _controller_x, _controller_y] = FLOOR;$(13_10)	$(13_10)	//Randomize the direction$(13_10)	if(irandom(_direction_change_odds)== _direction_change_odds) {$(13_10)		_controller_direction = irandom(3);$(13_10)	}$(13_10)	$(13_10)	//move the controller$(13_10)	var _x_direction = lemgthdir_x(1, _controller_direction * 90);$(13_10)	var _y_direction = lengthdir_y(1, _controller_direction * 90);$(13_10)	_controller_x += _x_direction;$(13_10)	_controller_y += _y_direction;$(13_10)	$(13_10)	//Limited movement to outside$(13_10)	if(_controller_x <2 || _controller_x >= width_ - 2){$(13_10)		_controller_x += _x_direction *2;$(13_10)	}$(13_10)	if(_controller_y <2 || _controller_y >= height_ - 2){$(13_10)		_controller_y += _y_direction *2;$(13_10)	}$(13_10)	$(13_10)	$(13_10)}$(13_10)$(13_10)for (var _y = 1; _y < height_-1; _y++){$(13_10)	for (var _x = 1; _x < weight_-1; _x++){$(13_10)		if(grid_[# _x, _y] == FLOOR){$(13_10)			$(13_10)	$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)"
randomize()

//Get the tile layer map and id
var _wall_map_id = layer_tilemap_get_id("WallTiles")

//Set up grid
width_ = room_width div CELL_WIDTH;
hetght_ = room_height div CELL_HEIGHT;
grid_ = ds_grid_create(width_, hetght_);
ds_grid_set_region(grid_, 0, 0, width_, height_, VOID);

//Create the controller
var _controller_x = width_ div 2
var _controller_y = height_ div 2
var _controller_direction = irandom(3);
var _steps = 400;

var _direction_change_odds = 1;

repeat(_steps){
	grid_[# _controller_x, _controller_y] = FLOOR;
	
	//Randomize the direction
	if(irandom(_direction_change_odds)== _direction_change_odds) {
		_controller_direction = irandom(3);
	}
	
	//move the controller
	var _x_direction = lemgthdir_x(1, _controller_direction * 90);
	var _y_direction = lengthdir_y(1, _controller_direction * 90);
	_controller_x += _x_direction;
	_controller_y += _y_direction;
	
	//Limited movement to outside
	if(_controller_x <2 || _controller_x >= width_ - 2){
		_controller_x += _x_direction *2;
	}
	if(_controller_y <2 || _controller_y >= height_ - 2){
		_controller_y += _y_direction *2;
	}
	
	
}

for (var _y = 1; _y < height_-1; _y++){
	for (var _x = 1; _x < weight_-1; _x++){
		if(grid_[# _x, _y] == FLOOR){
			
	
}