/// @arg check
/// @arg arr

//Args
var _check = argument[0];
var _arr = argument[1];

//Function
var _size = array_length_1d(_arr);
for(var i=0; i<_size; i++){
	if (_check==_arr[i]) return true;
}

return false;