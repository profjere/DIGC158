class Asteroid
{
  PImage img;
  int x=int(random(100,900));
  int y=int(random(100,900));
  
void run()
{
  display();
  wallcheck();
}  
  
void display()
{
  img=loadImage("asteroid.png");
  image(img, x, y);
  imageMode(CENTER);
  y=y+5;
}  

void wallcheck()
{
   if (y>500)
  {
    y=y-500;
    x=int(random(100,900));
  } 
}
}
