int x;
int y;
Die bob;
int rollScore;  //Noah this is the change I made --you need to use bob's rollScore value 
int total;
void setup()
{
  noLoop();
  size(600,600);
  background(0,0,0);
}
void draw()
{
  
  for(y=20; y<490; y=y+70)
    {
     for(x=20; x<550; x=x+70)
     {
       bob=new Die(x,y);
       bob.roll();
       total=total + bob.rollScore; // Noah this is the change I made you need to access it using the . operator
                                    // since you want to the value of the object bob's rollScore member variable
                                    // you need to access it with the . operator   
       bob.show();  
       fill(255,255,255);
     }
   }
   System.out.println("in draw" + total);
text("Total:" + total,200,550);
}
void mousePressed()
{
  total=0;
  redraw();
}
class Die //models one single dice cube
{
  int dieX;
  int dieY;
  int rollScore;
  Die(int x, int y) //constructor
  {
    dieX=x;
    dieY=y;
  }
  void roll()
  {
    rollScore=(int)(Math.random()*6+1);
  }
  void show()
  {
    fill(255,255,255);
    rect(x,y,50,50);
    fill(0,0,0);
    System.out.println(rollScore);
    if (rollScore==1)
      {
       ellipse(x+25,y+25,5,5);
      }
    if(rollScore==2)
      {
        ellipse(x+16.6,y+33.3,5,5);
        ellipse(x+24,y+25,5,5);
      }
    if(rollScore==3)
      {
        ellipse(x+25,y+12,5,5);
        ellipse(x+25,y+25,5,5);
        ellipse(x+25,y+40,5,5);
      }
    if (rollScore==4)
      {
       ellipse(x+16.6,y+16.6,5,5);
       ellipse(x+33.3,y+16.6,5,5);
       ellipse(x+16.6,y+33.3,5,5);
       ellipse(x+33.3,y+33.3,5,5);
      }
     if(rollScore==5)
      {
       ellipse(x+25,y+25,5,5);
       ellipse(x+16.6,y+16.6,5,5);
       ellipse(x+33.3,y+16.6,5,5);
       ellipse(x+16.6,y+33.3,5,5);
       ellipse(x+33.3,y+33.3,5,5);
      }
      if (rollScore==6)
      {
        ellipse(x+16.6, y+12,5,5);
        ellipse(x+33.3, y+12,5,5);
        ellipse(x+16.6, y+25,5,5);
        ellipse(x+33.3, y+25,5,5);
        ellipse(x+16.6, y+40,5,5);
        ellipse(x+33.3, y+40,5,5);
      }
     }
}
