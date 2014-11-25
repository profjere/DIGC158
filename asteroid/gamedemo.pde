Player player=new Player();
Asteroid[] asteroid=new Asteroid[5];

void setup()
{
  size(1000, 500);
  for (int i=0;i<asteroid.length;i++) //this for loop creates asteroid
     asteroid[i]=new Asteroid();
} 

void draw()
{
  background(0);
  
  player.run();
  
  for (int i=0;i<asteroid.length;i++) //this for loop draws each asteroid on the screen
    {
      asteroid[i].run();
      player.collision(asteroid[i].x, asteroid[i].y); //here we're borrowing the xy coordinates
    }                                                 //from the asteroid object and sending them
}                                                     // inot the collision method of the player object.  
