/// @arg x1
/// @arg y1
/// @arg x2
/// @arg y2

//Args
var _x1 = argument[0];
var _y1 = argument[1];
var _x2 = argument[2];
var _y2 = argument[3];

//Function
var dir = point_direction(_x1, _y1, _x2, _y2);
var dist = point_distance(_x1, _y1, _x2, _y2);

for(var i=0; i<=dist; i++){
	var _x = _x1 + lengthdir_x(i, dir);
	var _y = _y1 + lengthdir_y(i, dir);
	
	if (tilemap_get_at_pixel(global.tilemap, _x, _y)){
		return true;
	}
}

return false;