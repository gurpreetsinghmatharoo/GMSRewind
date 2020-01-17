/// @description 
// Store instance data for step
if (!isRewinding) {
	var _varsToStore = varsToStore;
	var _varsToStore_Size = array_length_1d(_varsToStore);
	var _arr = [];

	with (all) {
		// Skip self
		if (id == other) continue;
		
		// Arrays
		var _varArr = [];
		
		var _instArr = [
			id,
			_varArr
		];
	
		// Save default data
		for (var i = 0; i < _varsToStore_Size; ++ i) {
			var _name = _varsToStore[i];
			var _val = variable_instance_get(id, _name);
		
			__scrArrPush(_varArr, [_name, _val]);
		}
	
		// Save instance variables
		var _instVars = variable_instance_get_names(id);
		var _size = array_length_1d(_instVars);
	
		for (var i = 0; i < _size; ++ i) {
			var _name = _instVars[i];
			var _val = variable_instance_get(id, _name);
		
			__scrArrPush(_varArr, [_name, _val]);
		}
	
		// Save
		__scrArrPush(_arr, _instArr);
	}
	
	ds_list_add(rewindList, _arr);

	// Rewind limit
	if (ds_list_size(rewindList) >= rewindMaxSteps) {
		ds_list_delete(rewindList, 0);
	}
}