class Asteroid extends Floater
{
  private double rotSpeed; 
  
  public Asteroid() {
    corners = 6;
    xCorners = new int[]{-11, 7, 12, 6, -11, -15}; 
    yCorners = new int[]{-8, -8, 0, 10, 8, 0};
    myColor = color(#BFB9B9);
    myCenterX = (int)(Math.random()*500);
    myCenterY = (int)(Math.random()*500);
    myXspeed = (int)(Math.random()*4)-1;
    myYspeed = (int)(Math.random()*4)-1;
    rotSpeed = (int)(Math.random()*2);
  }
  
  public void move() { 
    turn (rotSpeed);
    super.move();
  }
  
  public double getX() {
    return myCenterX;
  }
  
  public double getY() {
    return myCenterY;
  }
}
