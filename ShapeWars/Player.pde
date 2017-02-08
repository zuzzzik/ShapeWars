class Player extends GameObject
{
  boolean fire;
  int score = 0;

  Player()
  {
    position = new PVector(250, 600);
    size = 20;
    energy = 3;
    c = color(255, 204, 0);
    fire = true;
  }

  void render()
  {
    fill(c);
    ellipse(position.x, position.y, size, size);
  }

  void fire()
  {
    println("BULLET");
    Bullet bullet = new Bullet(position.x, position.y);
    gameObjects.add(bullet);
  }

  void update()  
  {
    if (keyPressed)
    {
      if (keyCode == RIGHT && position.x < width - size/2) { 
        position.x+=2;
      }
      if (keyCode == LEFT && position.x > size/2) { 
        position.x-=2;
      }
      if (keyCode == UP)    
      {
        if (fire) 
        {
          fire();
          fire = false;
        }
      }
    }
  }
}