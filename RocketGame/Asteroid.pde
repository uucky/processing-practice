class Asteroid {
	float rot;
	float rad;
	float xPos, yPos; //starting position

	// float speed = 1;
	float velocityX, velocityY;

	long lastDrawMillis = 0;
	
	int xd = 1; //left or right
	int yd = 1; //top or bottom

	Asteroid(float r, float x, float y) {
		rot = r;
		xPos = x;
		yPos = y;
		rad = random(30, 40);

		velocityX = sin(rot)*1;
		velocityY = -cos(rot)*1;
	}

	void drawMe(){
		pushMatrix();

		// translate(velocityX, velocityY);
		// rotate(rot);

		//Update the position of the shape
		xPos = xPos + velocityX * xd;
		yPos = yPos + velocityY * yd;

		translate (xPos, yPos);

		// xPos = xPos + (speed * xd);
		// yPos = yPos + (speed * yd);
		
		// Test to see if the shape exceeds the boundaries of the screen
		// If it does, reverse its direction by multiplying by -1
		if (xPos > width - rad || xPos < rad) {
			xd *= -1;
		}
		if (yPos > height - rad || yPos < rad) {
			yd *= -1;
		}

		println("xPos: "+xPos);
		println("yPos: "+yPos);
		println("width: "+ width);
		println("height: "+ height);

		ellipse(xPos, yPos, rad, rad);

		popMatrix();
	}
}