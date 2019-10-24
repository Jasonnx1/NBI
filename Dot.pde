public class Dot
{
  PVector pos;

  ArrayList<PVector> vertex;
  
  
  
  Dot(float tx, float ty)
  {
    pos = new PVector(tx, ty);
    vertex = new ArrayList<PVector>();
    
    for(int i = 0; i < 3; i++)
    {
      vertex.add( new PVector(0,0) );
    }
      

  }
  
  
  void display()
  {
   
    ellipse(pos.x, pos.y, 5, 5);
    
  }

  
    
    
}
