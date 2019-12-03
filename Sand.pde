class Sand extends NodeState
{
  
  String name;
  
  Sand()
  {name = "Sand";}
  
  String getName(){return name;}
  
  color generate(float m)
  {
    
    return color(12.5, 33, m);  //Sand
    
  }
}
