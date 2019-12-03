class Grass extends NodeState
{
  
  String name;
  
  Grass()
  {
   name = "Grass"; 
  }
  
  String getName(){return name;}
  
  color generate(float m)
  {
    
    return color(27.72, 96, m); //Grass
    
  }
}
