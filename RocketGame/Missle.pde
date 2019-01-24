class Missle {
	float xPos, yPos;
	float rot;
	Missle(float x, float y, float r ) {
		x = xPos;
		y = yPos;
		r = rot;
	}

	void drawMe(){
		pushMatrix();
		translate(xPos, yPos);
		ellipse(0, 0, 2, 2);
		popMatrix();
	}
}