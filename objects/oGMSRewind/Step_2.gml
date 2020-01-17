/// @description 
// Is rewinding
if (isRewinding) {
	// Rewind back
	if (inputRewind) {
		rewindStep = clamp(rewindStep - 1, -rewindMaxSteps, -1);
	}
	
	// Set instance data
	var _listSize	= ds_list_size(rewindList);
	var _stepID		= _listSize + rewindStep;
	var _arr		= rewindList[| _stepID];
	var _arrSize	= array_length_1d(_arr);
	
	for (var i = 0; i < _arrSize; ++ i) {
		var _instArr = _arr [ i ];
		
		var _id		= _instArr[ 0 ];
		var _varArr = _instArr[ 1 ];
		
		var _varSize = array_length_1d(_varArr);
		
		for (var j = 0; j < _varSize; ++ j) {
			var _thisVar = _varArr[ j ];
			
			var _name	= _thisVar[ 0 ];
			var _val	= _thisVar[ 1 ];
			
			variable_instance_set(_id, _name, _val);
		}
	}
	
	// Log
	if (logging) __scrLog("Rewinding back ", rewindStep);
	
	// Stop
	if (inputContinue) {
		// Delete steps that we rewinded
		for (var i = _listSize - 1; i > _stepID; -- i) {
			ds_list_delete(rewindList, i);
		}
		
		// Disable rewind
		isRewinding	= false;
		rewindStep	= 0;
	}
}