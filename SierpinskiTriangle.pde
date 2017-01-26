public void setup()
{
	background(0);
size(600,600);
}
public void draw()
{ sierpinski(0,550,70);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
	if(len>=370)
	{
		stroke(0,0,255);
		noFill();
		triangle(x,y, x+len,y,x+len/2,y-len);
	}
	else {
		noFill();
		stroke(0,(int)(Math.random()*255),(int)(Math.random()*255));
		triangle(x+len/4,y, x+len/8,y-len/4,x+len*3/8,y-len/4);
		//triangle((x+len*3)/4,y, x+len*5/8,y+len/2,x+5*len/8,y+len/2);
		//triangle((x+len)/2,y, x+len/8,y+len/2,x+3*len/8,y+len/2);
		// ellipse(x/2,y/2,len+10,leny*(int)(Math.random()*6));
		// ellipse(x*3/2,y*3/2,len*(int)(Math.random()*6),leny+10);
		sierpinski(x,y,len+70);
		
	}

}