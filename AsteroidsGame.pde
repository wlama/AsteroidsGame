Spaceship ship = new Spaceship();
Stars[] stars = new Stars[100];
public void setup() 
{
	size(500, 500);
	background(0);
	ship.setX(500 / 2);
	ship.setY(500 / 2);
	for(int i = 0; i < 100; i++) {
		stars[i] = new Stars();
	}
}
public void draw() 
{
	background(0);
	for(int i = 0; i < 100; i++) {
		stars[i].show();
	}
	ship.show();
	ship.move();
}
void keyPressed() {
	if(key == 'w') {
		ship.accelerate(0.2);
	} else if(key == 'a') {
		ship.turn(-10);
	} else if(key == 'd') {
		ship.turn(10);
	} else if(key == 'h') {
		ship.setX((int)(Math.random() * 500));
		ship.setY((int)(Math.random() * 500));
		ship.setDirectionX(0);
		ship.setDirectionY(0);
		ship.setPointDirection((int)(Math.random() * 360));
	}
}