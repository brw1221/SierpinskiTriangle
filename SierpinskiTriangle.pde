color fillColorR = color(0,0,0,100);
color fillColorB = color(255,255,255,100);
color fillColorG = color(197,197,197,100);
public void setup()
{
	size(600,600);
	background(0);
}
public void draw()
{

	sierpinski(50, 550, 500);


}
public void keyPressed()
{
	if(keyCode == 65)
	{
		fillColorR = color(128,0,0,10);
		fillColorB = color(255,0,0,10);
		fillColorG = color(220,20,60,10);
	}
	if(keyCode == 83)
	{
		fillColorR = color(0,0,0,100);
		fillColorB = color(255,255,255,100);
		fillColorG = color(197,197,197,100);
	}
}
public void sierpinski(int x, int y, int len) 
{
	if(len>10)
	{
		fill(fillColorR);
		sierpinski(x, y, len/2);
		fill(fillColorB);
		sierpinski(x+(len/2), y, len/2);
		fill(fillColorG);
		sierpinski(x+(len/4), y-(len/2), len/2);
	}
	else 
	{
		triangle(x,y,x+len/2,y-len,x+len,y);
	}
}