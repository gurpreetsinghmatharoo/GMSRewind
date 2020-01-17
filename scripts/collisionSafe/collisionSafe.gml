/// @desc Move out if stuck in a collision
var xx1 = x;
var yy1 = y;
var xx2 = x;
var yy2 = y;

while (collision(x, y)){
	//Right
	xx1++;
	
	if (!collision(xx1, y)){
		x += xx1;
		break;
	}
	
	//Left
	xx2--;
	
	if (!collision(xx2, y)){
		x += xx2;
		break;
	}
	
	//Down
	yy1++;
	
	if (!collision(x, yy1)){
		y += yy1;
		break;
	}
	
	//Up
	yy2--;
	
	if (!collision(x, yy2)){
		y += yy2;
		break;
	}
}