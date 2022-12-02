Spaceship sue = new Spaceship();
Star[] nightSky = new Star[500];
public void setup() 
{
  size(500,500);
  for(int i = 0; i < nightSky.length; i++) {
   nightSky[i] = new Star(); 
   
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
