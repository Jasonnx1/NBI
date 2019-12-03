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
    
    fill(#FF1A1A);
    ellipse(pos.x,pos.y  ,  7,7); 
    
  }
 
 void move(float x, float y)
 {
   
   pos.x = x;
   pos.y = y;
   
 }
 
}
