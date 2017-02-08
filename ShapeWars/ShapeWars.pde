
int count;
ArrayList<GameObject> gameObjects = new ArrayList<GameObject>();

Player player1 = new Player();

void setup()
{
  size(500, 700);

  gameObjects.add(player1);
}


void draw()
{

  stats();

  if (count == 150)
  {
    if (!player1.fire)
    {
      player1.fire = true;
    }
    Enemy enemy = new Enemy();
    gameObjects.add(enemy);

    count = 0;
  }
  count++;

  background(0);

  for (int i = gameObjects.size() -1; i >= 0; i --)
  {
    GameObject object = gameObjects.get(i); 
    object.update();
    object.render();
  }
}

void stats()
{
  fill(0);
  textSize(32);
  text("word", 10, 30);
}