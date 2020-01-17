/// @description 
//Delta timing
//Delta factor
if (onPause || os_is_paused()){
	global.delta_factor = 1;
	
	if (onPause) {
		onPause = false;
	}
}
else{
	global.delta_factor = round((delta_time / 16666)*10)/10;
}

factorTime++;
factorTotal += global.delta_factor;
global.factorAvg = factorTotal / factorTime;

//onPause
if (os_is_paused()){
	onPause = true;
}