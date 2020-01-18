/// @arg check
/// @arg vals...

//Args
var _check = argument[0];

//Function
for(var i=1; i<argument_count; i++){
	if (_check==argument[i]) return true;
}

return false;