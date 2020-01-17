/// @description
// Movement Properties
speedWalk = 2;
speedRun = 3;

enableSmooth = true; //Should the movement be smooth?
speedSmooth = 0.2;

// Physics Properties
speedGravity = 0.5;
maxGravity = 10;

speedJump = 5;
speedJumpHigh = 0.42; //Additional jump speed for variable "enableHighJump" below

// Input Properties
enableRun = true;
enableWASD = true;
enableArrowKeys = true;
enableHighJump = true; //Jumping higher by holding the jump key
enableUnlimitedJumps = false;

// Input Keys; Use ord("A") for letter keys
keyRun = vk_shift;
keyJump = vk_space;

// Misc
respawnOnGround = true; //After falling, respawn on last grounded position

// Variables
hsp = 0;
vsp = 0;
grav = speedGravity;

jumpHeld = false;

groundedX = x;
groundedY = y;

// Debug
debug = false;
debugSurf = -1;

// States
enum st{
	idle,
	walk,
	run,
	jump,
	fall
}

state = st.idle;

// Sprites
sprite[st.idle] = sPlayer_Idle;
sprite[st.walk] = sPlayer_Walk;
sprite[st.run] = sPlayer_Run;
sprite[st.jump] = sPlayer_Jump;
sprite[st.fall] = sPlayer_Fall;