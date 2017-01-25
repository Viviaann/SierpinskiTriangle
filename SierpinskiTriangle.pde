public void setup()
{
	background(0);
size(600,600);
}
public void draw()
{ sierpinski(300,300,600, 600);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len, int leny) 
{
	if(len<=70 && leny<=70)
	{
		stroke(0,0,255);
		noFill();
		ellipse(x,y,len,leny);
	}
	else {
		stroke(0,255,(int)(Math.random()*255));
		noFill();
		stroke(0,(int)(Math.random()*255),(int)(Math.random()*255));
		ellipse(x,y,len+10,leny*(int)(Math.random()*6));
		ellipse(x,y,len*(int)(Math.random()*6),leny+10);
		sierpinski(x,y,len- 70,leny-70);
		
	}

}