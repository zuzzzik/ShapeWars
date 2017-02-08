abstract class GameObject
{
  PVector velocity;
  PVector position;
  float size;
  color c;
  int energy;

  GameObject()
  {
  }

  abstract void update();  
  abstract void render();
}