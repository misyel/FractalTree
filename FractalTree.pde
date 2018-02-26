private double fractionLength = .8; 
private int smallestBranch = 10; 
private double branchAngle = .2; 
private double angle1, angle2;

public void setup() 
{   
  size(640, 480);  
  noLoop();
} 
public void draw() 
{   
  background(255);   
  stroke( 0);   
  line(320, 480, 320, 380); 
  drawBranches(320,380,200,3*Math.PI/2);
} 
public void drawBranches(int x, int y, double branchLength, double angle) 
{   
  angle1 = branchAngle+angle;
  angle2=angle-branchAngle;
  branchLength*=fractionLength;
  int endX1 = (int)(branchLength*Math.cos(angle1) + x);
  int endY1 = (int)(branchLength*Math.sin(angle1) + y);
    int endX2 = (int)(branchLength*Math.cos(angle2) + x);
  int endY2 = (int)(branchLength*Math.sin(angle2) + y);
  line(x,y,endX1,endY1);
  line(x, y, endX2, endY2);

  if(branchLength>smallestBranch){
    drawBranches(endX1,endY1,branchLength/2,angle1);
    drawBranches(endX2,endY2,branchLength/2,angle2);
  }



  //your code here
} 