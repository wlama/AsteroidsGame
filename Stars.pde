class Stars //note that this class does NOT extend Floater
{
	float x, y;
	Stars() {
		x = (float)Math.random() * 500;
		y = (float)Math.random() * 500;
	}
	public void show() {
		ellipse(x, y, (float)1, (float)1);
		fill(255);
	}
}
