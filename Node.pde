public class Node
{
  
  PVector pos;
  color c;
  float moisture;
  NodeState state;
 
  Node()
  {  
    pos = new PVector(random(0, width), random(0, height) );   
    moisture = 0;
    state = new Water();
  }
  
  void generate()
  {
   
   c = state.generate(moisture);
    
  }
  
  

  
}
