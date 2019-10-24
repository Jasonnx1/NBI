

public class VoronoiMap
{
  ArrayList<Dot> dots = new ArrayList<Dot>();
  int MaxDots = 50;
  float SeperationForce = 20;
  float SweepLine = 0;
  
  

  
  void generateDots()
  {
    
    
    for(int i = 0; i < MaxDots; i++)
    {
      
      float x = random(0, width);
      float y = random(0, height);
      dots.add(new Dot(x, y) );
      
    }
    
    
  }
  
  void generateMap()
  {
    
    for(int i = 0; i < MaxDots; i++)
    {
      
      for( Dot d : dots )
      {
        if(d != dots.get(i))
        {
          if(PVector.dist( dots.get(i).pos, d.pos ) < 50 )
          {
            fill(255);
            PVector tempVec = new PVector(0,0);
            if(dots.get(i).pos.x > d.pos.x)
            {
              
              tempVec.x = (dots.get(i).pos.x + d.pos.x)/2;
              tempVec.y = (dots.get(i).pos.y + d.pos.y)/2;
             
            }
            
            ellipse(tempVec.x, tempVec.y, 5,5);
            
          }      
        }
        
       
      }
     
    }
    
    
  }
  
  void display()
  {
   
    for(Dot d : dots)
    {
      fill(0);
      d.display();
      
    }
  }
  
  void seperate()
  {
    
    ///TODO: Seperate Dots
    
    
  }
  
  
  
}
