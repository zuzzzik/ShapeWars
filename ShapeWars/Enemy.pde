class Enemy extends GameObject
{

  Enemy()
  {
    position = new PVector(random(20, 480), random(20, 100));
    velocity = new PVector(0, random(1, 2));
    energy = 20;
    c = color(random(1, 255), random(1, 255), random(1, 255));
    size = energy;
  }


  void render()
  {
    fill(c);
    ellipse(position.x, position.y, energy, energy);
  }

  void update()
  {
    for (int i = gameObjects.size() -1; i >= 0; i --)
    {
      if (gameObjects.get(i) instanceof Bullet)
      {
        Bullet b = (Bullet)gameObjects.get(i);

        if (b.position.y - size/2 < this.position.y + size/2 && b.position.x - size/2 < this.position.x + size/2 && b.position.x + size/2 > this.position.x - size/2)
        {
          gameObjects.remove(this);
          b.size+=5;
          ++player1.score;
        }
      }
    }

    position.add(velocity);

    if (position.y > player1.position.y)
    {
      gameObjects.remove(this);
      player1.energy--;
    }
  }
}