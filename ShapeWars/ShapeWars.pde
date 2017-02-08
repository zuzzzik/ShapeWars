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
  background(color(169, 169, 169));

  if (player1.energy != 0)
  {
    gameStart();
  } 
  else
  {
    gameOver();
  }
}

void stats()
{
  fill(0);
  textSize(32);
  text("Score: " + player1.score, 10, 30);
  text("Energy: " + player1.energy, 10, 60);
}

void gameOver()
{
  fill(0);
  textSize(32);
  text("Game Over", width/2, height/2);
  text("Your Score: " + player1.score, width/2, height/2 + 30);
}

void gameStart()
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

  for (int i = gameObjects.size() -1; i >= 0; i --)
  {
    GameObject object = gameObjects.get(i); 
    object.update();
    object.render();
  }
}

void mainMenu()
{
  
}