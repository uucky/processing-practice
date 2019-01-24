/*
The class should have a constructor which takes the initial position and rotation of the Rocket as arguments.
It should also have a drawRCT() which when called draws the rocket.
*/
class Rocket {
	float xPos, yPos; //initial pos of the rocket
	float rotation = 0;
	float rotFactor = 0.01;
	float timePassed = 1;
	final int halfHeight = 10;
	final int halfWidth = 10; 

	Rocket( int x, int y, float r ) {
		xPos = x; 
		yPos = y;
		rotation = r;
	}
	
	void drawRCT() {
		pushMatrix();

		translate(xPos, yPos);
		// rotate(timePassed * rotation * PI);
		rotate(rotation * PI);

		fill(255);
		triangle(0, -halfHeight, -halfWidth, halfHeight, halfWidth, halfHeight); 
		rectMode(CORNERS);
		rect(-halfWidth + 5, halfHeight, -halfWidth + 8, halfHeight + 3);
		rect(halfWidth - 8, halfHeight, halfWidth - 5, halfHeight + 3);
		rectMode(0);

		popMatrix();
	}

	/*
	Rocket class three functions:
	rotateClockwise()
	rotateCounterclockwise()
	Bind the rotation behaviour to keys on your keyboard. You should be able to control the rotation of the rocket using the keyboard.
	Hint: Use the keyPressed() and key global variables to implement the interaction.
	*/
	void rotateClockwise() {
		timePassed += 1;
		rotation += rotFactor;
	}

	void rotateCounterclockwise (){
		timePassed += 1;
		rotation -= rotFactor;
	}

	void fireThrusters() {
		
	}
}
