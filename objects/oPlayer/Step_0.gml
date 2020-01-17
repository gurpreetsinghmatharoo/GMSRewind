/// @description 
//Grounded
grounded = collision(x, y+1);

if (grounded && alarm[0]<0){
	alarmGroundedX = x;
	alarmGroundedY = y;
	
	alarm[0] = 20; //Delayed grounded position
}

#region Platformer Movement
//Input
var hor, jump, jumpHold, run;
hor = (keyboard_check(ord("D"))*enableWASD || keyboard_check(vk_right)*enableArrowKeys)
	 -(keyboard_check(ord("A"))*enableWASD || keyboard_check(vk_left)*enableArrowKeys);
	
jump = keyboard_check_pressed(keyJump);
jumpHold = keyboard_check(keyJump);

run = keyboard_check(keyRun) && enableRun;

//Movement
var hspTarget = hor * (run ? speedRun : speedWalk) * dt;

if (enableSmooth){
	hsp = lerp(hsp, hspTarget, speedSmooth);
}
else{
	hsp = hspTarget;
}

//Gravity
if (vsp < maxGravity) vsp += grav * dt;

//Jump
if (jump && (grounded || enableUnlimitedJumps)){
    vsp = -speedJump;
	
	jumpHeld = true;
}

//Jump held
if (jumpHeld && vsp<0){
	vsp -= (abs(vsp)/speedJump) * speedJumpHigh * dt;
}

//Jump not held
if (jumpHeld && !jumpHold){
	jumpHeld = false;
}

//Collisions
collisionSafe();

if (collision(x+hsp, y)){
    while(!collision(x+sign(hsp), y)){
		x += sign(hsp);	
    }

    hsp = 0;
}

if (collision(x, y+vsp)){
    while(!collision(x, y+sign(vsp))){
		y += sign(vsp);	
    }

    vsp = 0;
}

if (collision(x+hsp, y+vsp)){
    hsp = 0;
}

//Apply
x += hsp;
y += vsp;
#endregion

#region States
// Set state
//Jump
if (vsp < 0){
	state = st.jump;
}
//Fall
else if (vsp >= 0 && !grounded){
	state = st.fall;
}
//Move
else if (abs(hsp)){
	//Walk
	if (!run){
		state = st.walk;
	}
	//Run
	else{
		state = st.run;
	}
}
//Idle
else{
	state = st.idle;
}

//Set sprite
sprite_index = sprite[state];

//Flip
if (abs(hsp)){
	image_xscale = sign(hsp);
}
#endregion

#region Misc
//Fell out of the room
if (y > room_height + 64){
	x = groundedX;
	y = groundedY;
}
#endregion