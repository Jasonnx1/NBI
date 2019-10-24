import Voronoi.java;

public class VoronoiMap
{
  ArrayList<Dot> dots = new ArrayList<Dot>();
  int MaxDots = 200;
  float SeperationForce = 50;
  
  
  Voronoi voronoi = new Voronoi();
  
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
    
    
  }
  
  void display()
  {
   
    for(Dot d : dots)
    {
      
      d.display();
      
    }
  }
  
  void seperate()
  {
    
    ///TODO: Seperate Dots
    
    
  }
  
  
  
}
