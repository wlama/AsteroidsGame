Spaceship ship = new Spaceship();
Stars[] stars = new Stars[100];
ArrayList<Asteroid> asteroids = new ArrayList<Asteroid>();
ArrayList<Bullet> bullets = new ArrayList<Bullet>();

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
		} else {
			for(int j = 0; j < bullets.size(); j++) {
				if(dist(asteroids.get(i).getX(), asteroids.get(i).getY(), bullets.get(j).getX(), bullets.get(j).getY()) < 14) {
					asteroids.remove(i);
					bullets.remove(j);
					break;
				}
			}
		}
	}
	ship.show();
	ship.move();
	if(bullets.size() > 0) {
		for(int i = 0; i < bullets.size(); i++) {
			bullets.get(i).show();
			bullets.get(i).move();
		}
	}
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
	} else if(key == ' ') {
		bullets.add(new Bullet(ship));
	}
}