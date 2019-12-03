class Stone extends NodeState
{
  
  String name;
  
  Stone(){name = "Stone";}
  
  String getName(){return name;}
  
  color generate(float m)
  {
    
    return color(0, 5, 52); //Stone
    
  }
}
