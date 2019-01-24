//in-class practice
/*
Part 3: Draw Asteroids (25 mins) 
Implement the Asteroid class as discussed in the lecture. 
The Asteroid class should have a drawMe() function which draws the Asteroid. 
Instantiate 10 Asteroids in the Sketch using an array. 
The Asteroids should move automatically across the screen. 

Part 4: Inheritance (20 mins) 
Create an ArmedRocket class which has a fire() function which fires missiles in the sketch. 
Like Part 2, the missile fire should be controlled using the keyboard. 

Part 5: Make it move (25 mins) 
Add velocity to the Rocket class so that the Rocket moves. 
Add a fireThrusters() method to the Rocket class which makes the Rocket move forward when a key is pressed. 
*/
ArrayList<Asteroid> asteroids;

Rocket r1;
void setup() {
	size(500, 500);
	r1 = new Rocket(75, 10, 0);

	asteroids = new ArrayList<Asteroid>();
	for (int i = 0; i < 10; i++) {
		asteroids.add( new Asteroid(random(0, TWO_PI),250,250));

		// asteroids.add( new Asteroid(random(0, TWO_PI),random(0, width),random(0, height)));
	}

	// for (int i = 0; i < 10; i ++) {
	// 	Asteroids[i] = new Asteroid ( );
	// 	println("xPos: "+Asteroids[i].xPos);
	// 	println("yPos: "+Asteroids[i].yPos);
	// }

}

void draw() {
	background(0);

	// initialize all of our asteroids.
	r1.drawRCT();

	if (keyPressed) {
		if (key == 'd' || key == 'D') {
				r1.rotateClockwise();
		}
	}

	if (keyPressed) {
		if (key == 'a' || key == 'A') {
				r1.rotateCounterclockwise();
		}
	}
	
	for (Asteroid a: asteroids){
		a.drawMe();
	}

	//temp border

  // rect(0, 0, width, borderStroke); // Top
  // rect(width-borderStroke, 0, borderStroke, height); // Right
  // rect(0, height-borderStroke, width, borderStroke); // Bottom
  // rect(0, 0, borderStroke, height); // Left
}


