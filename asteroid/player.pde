class Player
{
  PImage img;
  int x=30;
  int y=250;
  int w=50;

void run()
{
  display();
  move();
  wallcheck();
} 

void display()
{
  img=loadImage("player.png");
  image(img, x, y);
  imageMode(CENTER);
}

void move()
{
  if(key == CODED)
  {
    if (keyCode == UP)
       y=y-3;
    if (keyCode == DOWN)
       y=y+3;
    if (keyCode == RIGHT)
       x=x+3;
    if (keyCode == LEFT)
       x=x-3;   
  } 
}

void wallcheck()
{
  if (x>1000) 
     x=x-5;
   if (x<0)
     x=x+5;
   if (y>500)
     y=y-5;
   if (y<0)
     y=y+5;
} 

void collision (int asteroidx, int asteroidy)
{
  if ((y>asteroidy-31) & (y<asteroidy+31) & (x>asteroidx-31) & (x<asteroidx+31))
     x=x-x;
  
}  
}
