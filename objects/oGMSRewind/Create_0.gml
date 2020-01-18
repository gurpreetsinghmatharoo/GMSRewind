/// @description 
// ## CONFIG START ##

// ## REWINDING ##
rewindMaxSteps = 60 * 10; // Max steps allowed for rewinding (60/sec)
rewindSpeed	   = 1;		  // 1 = same as game speed

// ## DATA ##
// Whether all instance variables should be saved for instances
saveAllInstVars = true;

// These are the variables that you wanna save for each instance
// Exclude instance variables if `saveAllInstVars` is enabled
varsToStore = [
	"sprite_index", "image_index", "x", "y", "image_xscale",
	"image_yscale", "image_angle", "image_blend", "image_alpha"
]

// These objects will be affected by the time rewind (can use `all`)
objectsToInclude = [
	all
]

// ## INPUT ##
keyRewind = vk_f2;
keyContinue = vk_f3;
keyForward = vk_f4;

// ## VARS ##
logging = true; // Enable logging

// ## GUI ##
guiMargin				= 16;
guiRewindBarHeight		= sprite_get_height(sGMSRewind_Rewind);
guiRewindPlayheadWidth	= 8;
guiRewindLineHeight		= 8;

guiRewindLineAlpha		= 0.5;
guiRewindPlayheadAlpha	= 1;

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
inputForward = false;
#endregion