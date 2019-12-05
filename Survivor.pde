class Survivor
{
  
  Cell cell;
  PVector pos;
  
  Survivor(PVector pos_)
  {
    
    pos = pos_;
    
  }
  
  
  void display()
  {
    
    
    fill(#FF05E2);
    ellipse(pos.x,pos.y  ,  7,7); 
    
  }
 
 void move(float x, float y)
 {
   
   
   pos.x = x;
   pos.y = y;
   
 }
 
 void shovel(Node n)
 {
  
    n.state = new Sand();
   
 }
 
}
