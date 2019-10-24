public class Dot
{
  PVector pos;

  
  
  
  Dot(float tx, float ty)
  {
    pos = new PVector(tx, ty);

  }
  
  
  void display()
  {
   
    ellipse(pos.x, pos.y, 5, 5);
    
  }

  
    
    
}
