class Spaceship extends Floater  
{   
    public Spaceship() {
     corners = 4;
     xCorners = new int[] {-8, 16, -8, -2};
     yCorners = new int[] {-8, 0 , 8, 0};
     myColor = #089CFC;
     myCenterX = 250;
     myCenterY = 250;
     myPointDirection = 0;
    }
public void setXspeed (double x) {
    myXspeed = x;
  }
  
public void setYspeed (double y) {
    myYspeed = y;
  }
  
public void setCenterX (int x) {
    myCenterX = x;
  }
  
public void setCenterY (int y) {
    myCenterY = y;
  }
  
public void setPointDirection (double y) {
    myPointDirection = y;
  }
  
public double getX() {
    return myCenterX;
  }
  
 public double getY() {
    return myCenterY;
  }
}
