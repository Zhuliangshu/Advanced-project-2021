// // Script assets have changed for v2.3.0 see
// // https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function load_impass() 
{
	for (var i=_startx; i<_endx; i++) {
    	for (var j=_starty; j<_endy; j++;) {
    		var impassMap = layer_tilemap_get_id("Walls");
			var impassMapData = tilemap_get(impassMap, i, j);
			if tileMapData >= 0 {
				var impassable = 0;
				if impassMapData > 1 {
					mp_grid_add_cell(global.grid_mp, i, j);	
				}
			}
    	}
    }
	
}