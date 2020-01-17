/// @description 
// ## CONFIG START ##

// ## REWINDING ##
rewindMaxSteps = 60 * 10; // Max steps allowed for rewinding (60/sec)
rewindSpeed	   = 1;		  // 1 = same as execution speed

// ## DATA ##
// These are the default variables that you wanna save for each instance
// Exclude instance variables, only built-in variables are allowed here
varsToStore = [
	"sprite_index", "image_index", "x", "y", "image_xscale",
	"image_yscale", "image_angle", "image_blend", "image_alpha"
]

// ## VARS ##
logging = true; // Enable logging

// ## CONFIG END ##

#region Internal
rewindList = ds_list_create();

// Rewind vars
rewindStep = 0; // Negative value

// Booleans
isRewinding = false; // Is the user rewinding currently?

// Input vars
inputRewind = false;
inputContinue = false;
#endregion