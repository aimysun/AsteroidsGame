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
  for (int i = 0; i < nightSky.length; i++){
  	nightSky[i].show();
  }
}

//public void keyPressed()
{
	if(key == 'a'){
		
	}
}
