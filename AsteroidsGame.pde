Spaceship ymca;
Star[] nightSky = new Star[200];
ArrayList <Asteroid> stones = new ArrayList <Asteroid>();
public void setup() 
{
	size(500, 500);
	ymca = new Spaceship();
	for(int i = 0; i < nightSky.length; i++){
		nightSky[i] = new Star();
	}
	for(int i = 0; i < 20; i++){
		stones.add(new Asteroid());
	}
}
public void draw() 
{
  background(0);
  ymca.show();
  ymca.move();
  for (int i = 0; i < nightSky.length; i++){
  	nightSky[i].show();
  }
  for(int i = 0; i < stones.size(); i++){
  	stones.get(i).show();
  	stones.get(i).move();
  }
  for(int i = 0; i < stones.size(); i++)
	{
		stones.get(i).show();
		stones.get(i).move();
		if(dist(stones.get(i).getX(), stones.get(i).getY(), ymca.getX(), ymca.getY()) < 30 + 2)
		{
			stones.remove(i);
		}
	}
}

public void keyPressed()
{
	if(keyCode == LEFT){
		ymca.turn(-15);
	}
	if(keyCode == RIGHT){
		ymca.turn(15);
	}
	if(keyCode == 38) { //up key
      ymca.accelerate(.3);
    }
    if(keyCode == DOWN) { // down key
      ymca.accelerate(-.3);
	}
	if(keyCode == 79){ // o key
	   ymca.setDirectionX(0);
       ymca.setDirectionY(0);
       ymca.setX((int)(Math.random()*500));
       ymca.setY((int)(Math.random()*500));
       ymca.setPointDirection((int)(Math.random()*360));
	} 
	
}
