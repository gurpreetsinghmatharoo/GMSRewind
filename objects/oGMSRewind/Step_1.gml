/// @description 
// Rewind input
inputRewind = keyboard_check(keyRewind);
inputContinue = keyboard_check(keyContinue);
inputForward = keyboard_check(keyForward);

// Start rewind
if (!isRewinding && inputRewind) {
	isRewinding = true;
}