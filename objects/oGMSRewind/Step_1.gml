/// @description 
// Rewind input
inputRewind = keyboard_check(vk_f2);
inputContinue = keyboard_check(vk_f3);

// Start rewind
if (!isRewinding && inputRewind) {
	isRewinding = true;
}