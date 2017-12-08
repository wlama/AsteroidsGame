class Asteroid extends Floater {
	private int rotationSpeed;
	public Asteroid() {
		corners = 6;
		xCorners = new int[corners];
		yCorners = new int[corners];
		xCorners[0] = - 15;
		yCorners[0] = 10;
		xCorners[1] = - 5;
		yCorners[1] = 15;
		xCorners[2] = 9;
		yCorners[2] = 12;
		xCorners[3] = 13;
		yCorners[3] = 0;
		xCorners[4] = 4;
		yCorners[4] = - 13;
		xCorners[5] = - 10;
		yCorners[5] = - 10;
		rotationSpeed = (int)(Math.random() * 5 - 2);
	}
	public void move() {
		turn(rotationSpeed);
		super.move();
	}
	public void setX(int x) {myCenterX = x;} 
	public int getX() {return (int)myCenterX;}   
	public void setY(int y) {myCenterY = y;}   
	public int getY() {return (int)myCenterY;}  
	public void setDirectionX(double x) {myDirectionX = x;}   
	public double getDirectionX() {return myDirectionX;}   
	public void setDirectionY(double y) {myDirectionY = y;}   
	public double getDirectionY() {return myDirectionY;}   
	public void setPointDirection(int degrees) {myPointDirection = degrees;}   
	public double getPointDirection() {return myPointDirection;}
}