Spaceship sue = new Spaceship();
Star[] nightSky = new Star[500];
ArrayList<Asteroid> Meteors = new ArrayList <Asteroid>();
ArrayList<Bullet> pewpew = new ArrayList <Bullet>();

public void setup() 
{
  size(500,500);
  for(int i = 0; i < nightSky.length; i++) {
   nightSky[i] = new Star(); 
  }
  for(int i = 0; i < 30; i++) {
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
    for (int a = 0; a < pewpew.size(); a++) {
      pewpew.get(a).show();
      pewpew.get(a).move();
      float spoon = dist((float)pewpew.get(a).getX(), (float)pewpew.get(a).getY(), (float)Meteors.get(i).getX(), (float)Meteors.get(i).getY());
      if (spoon < 50) {
        pewpew.remove(a);
        Meteors.remove(i);
        break;
      }
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
 if(key == 'f') {
   pewpew.add(new Bullet(sue));
  }
}
