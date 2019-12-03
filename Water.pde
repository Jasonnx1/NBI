class Water extends NodeState
{
  
  String name;
  
  Water(){name = "Water";}
  
  String getName(){return name;}
  
  color generate(float m)
  {
    
    return color(57.50,80, m); //Water 
    
  }
}
