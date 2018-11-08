Spaceship ymca;
Star[] nightSky = new Star[200];
public void setup() 
{
	size(500, 500);
	ymca = new Spaceship();
	for(int i = 0; i < nightSky.length; i++){
		nightSky[i] = new Star();
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
      ymca.accelerate(.01);
    }
    if(keyCode == DOWN) { // down key
      ymca.accelerate(-.01);
	}
	if(keyCode == 79){ // o key
	   ymca.setDirectionX(0);
       ymca.setDirectionY(0);
       ymca.setX((int)(Math.random()*500));
       ymca.setY((int)(Math.random()*500));
       ymca.setPointDirection((int)(Math.random()*360));
	} 
	
}
