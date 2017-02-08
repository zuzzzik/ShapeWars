class Bullet extends GameObject
{
  PVector velocity;
  
  Bullet(float x, float y)
  {
    this.position = new PVector(x,y);
    this.velocity = new PVector(0,-1);
    this.size = 20;
    this.c = color(255, 0, 0);
    
  }
  
  
  void render()
   {
     fill(c);
     ellipse(position.x, position.y, size, size);
   }
  
  void update()
  { 
    if (position.y > size/2)
    {
     position.add(velocity);
    }

    else
    {
     gameObjects.remove(this);
    }
  }
}