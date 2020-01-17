/// @arg x
/// @arg y

//Args
var _x = argument[0];
var _y = argument[1];

//Vars
var _hsp = (_x-x);
var _vsp = (_y-y);

//Ceil
if (_hsp > 0) _hsp = ceil(_hsp);
if (_vsp > 0) _vsp = ceil(_vsp);

//BBox values
var _left = bbox_left + _hsp;
var _top = bbox_top + _vsp;
var _right = bbox_right + _hsp;
var _bottom = bbox_bottom + _vsp;

//Tile
var tileCol = tilemap_get_at_pixel(global.tilemap, _left, _top) ||
				tilemap_get_at_pixel(global.tilemap, _right, _top) ||
				tilemap_get_at_pixel(global.tilemap, _left, _bottom) ||
				tilemap_get_at_pixel(global.tilemap, _right, _bottom);

//Object
var objCol = place_meeting(_x, _y, oCollision);

return tileCol || objCol;