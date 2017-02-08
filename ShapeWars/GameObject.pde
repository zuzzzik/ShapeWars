abstract class GameObject
{
  PVector velocity;
  PVector position;
  float size;
  color c;
  float energy;
  
  GameObject()
  {
    
  }
  
  abstract void update();  
  abstract void render();
}