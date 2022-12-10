class Bullet extends Floater {
  public Bullet(Spaceship Fork) {
    myCenterX = Fork.getX();
    myCenterY = Fork.getY();
    myPointDirection = Fork.getPointDirection();
    accelerate(10);
  }
  
   public void show() {
    noStroke();
    fill(255,0,0);
    ellipse((float)myCenterX, (float)myCenterY, 5, 5);
  }
  
  public void move() {
    myCenterX += myXspeed;
    myCenterY += myYspeed;
  }
  
  public double getX() {
    return myCenterX;
  }
  
  public double getY() {
    return myCenterY;
  }
}
