Spaceship ship = new Spaceship();
Stars[] stars = new Stars[100];
ArrayList<Asteroid> asteroids = new ArrayList<Asteroid>();
public void setup() 
{
	size(700, 700);
	background(0);
	ship.setX(700 / 2);
	ship.setY(700 / 2);
	for(int i = 0; i < 100; i++) {
		stars[i] = new Stars();
	}
	for(int i = 0; i < 30; i++) {
		asteroids.add(new Asteroid());
		asteroids.get(i).setDirectionX(Math.random() * 5 - 2);
		asteroids.get(i).setDirectionY(Math.random() * 5 - 2);
		asteroids.get(i).setPointDirection((int)(Math.random()*360));
		asteroids.get(i).myColor = 169;
	}
}
public void draw() 
{
	background(0);
	for(int i = 0; i < 100; i++) {
		stars[i].show();
	}
	for(int i = asteroids.size() - 1; i >= 0; i--) {
		asteroids.get(i).show();
		asteroids.get(i).move();
		if(dist(ship.getX(), ship.getY(), asteroids.get(i).getX(),  asteroids.get(i).getY()) < 20) {
			asteroids.remove(i);
		}
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