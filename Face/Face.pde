PShape s, ear, eye;
color backgroundColor = color(255, 240, 246);
color skinColor = color(163, 93, 18);
color earColor = color(255, 196, 137);
color strokeColor = color(66, 35, 4);

void setup(){
	size(500, 500);
}

void drawEar (){
    ear = createShape();
    	ear.beginShape();
		fill(earColor);

		ellipse(0, 0, 100, 100);
    	ear.endShape(CLOSE);
}

void drawEye (){
    eye = createShape();
    	eye.beginShape();
		fill(backgroundColor);

		ellipse(0, 0, 40, 40);
    	eye.endShape(CLOSE);
}

void drawFace(){
	s = createShape();
		s.beginShape();
		pushMatrix();
		translate(250, 250);
		ellipse(0, 0, 200, 200);
		// s.stroke(200, 50);
		// shape(ear);
			// noStroke();
			pushMatrix();
			translate(80, -80);
			drawEar();
			popMatrix();

			pushMatrix();
			translate(-80, -80);
			drawEar();
			popMatrix();

			pushMatrix();
			translate(50, -20);
			drawEye();
			popMatrix();

			pushMatrix();
			translate(-50, -20);
			drawEye();
			popMatrix();

			pushMatrix();
			ellipse(0, 20, 20, 20);
			popMatrix();

			pushMatrix();
			ellipse(0, 80, 60, 20);
			popMatrix();
		popMatrix();


    s.endShape(CLOSE);
}

void draw(){
	// fill(backgroundColor, 250, 250);
	// noFill();
	// noStroke();
	drawFace();

}
