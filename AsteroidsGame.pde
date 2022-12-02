Spaceship sue = new Spaceship();
Star[] nightSky = new Star[500];
ArrayList<Asteroid> Meteors = new ArrayList <Asteroid>();

public void setup() 
{
  size(500,500);
  for(int i = 0; i < nightSky.length; i++) {
   nightSky[i] = new Star(); 
  }
  for(int i = 0; i < 15; i++) {
    Meteors.add(new Asteroid());
  }
}
public void draw() 
{
  background(0);
  sue.show();
  sue.move();
  for(int i = 0; i < nightSky.length; i++) {
   nightSky[i].show(); 
  }
  for(int i = 0; i < Meteors.size(); i++) {
    Meteors.get(i).show();
    Meteors.get(i).move();
    float myDist = dist((float)Meteors.get(i).getX(), (float)Meteors.get(i).getY(), (float)sue.getX(), (float)sue.getY());
    if(myDist < 20) {
     Meteors.remove(i); 
    }
  }
}
public void keyPressed () {
 if(key == 'h') {
  sue.setXspeed(0);
  sue.setYspeed(0);
  sue.setCenterX((int)(Math.random()*500));
  sue.setCenterY((int)(Math.random()*500));
  sue.setPointDirection((int)(Math.random()*500));
 }
 if(key == 'w') {
   sue.accelerate(0.25);
 }
 if(key == 's') {
   sue.accelerate(-0.25);
 }
 if(key == 'a') {
   sue.turn(-10);
 }
 if(key == 'd') {
   sue.turn(10);
 }
}
