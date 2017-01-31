public void setup()
{
	
size(600,600);
}
public void draw()
{ 
	background(0);
	sierpinski(100,550,mouseY);
}
public void mouseDragged()//optional
{ 
}
public void sierpinski(int x, int y, int len) 
{
	if(len<=70)
	{
	if(mouseX<100){
stroke((int)(Math.random()*255),0,(int)(Math.random()*255));
}
if(mouseX<300&& mouseX>100)
{
stroke((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
	
}
if(mouseX<500&& mouseX>300)
{
stroke((int)(Math.random()*255),0,(int)(Math.random()*255));
	
}
if(mouseX<700&& mouseX>500)
{
stroke(0,(int)(Math.random()*255),(int)(Math.random()*255));
	
}
		strokeWeight(5);
		noFill();
		triangle(x,y, x+len,y,x+len/2,y-len);
	}
	else {
		noFill();
	sierpinski(x,y,len/2);
	sierpinski(x+len/2,y,len/2);
	sierpinski(x+len/4,y-len/2,len/2);	
	}

}