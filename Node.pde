public class Node
{
  
  PVector pos;
  color c;
  int attribut;
 
  Node()
  {  
    pos = new PVector(random(20, width - 20), random(20, height - 20) );   
    attribut = 4;
  }
  
  void generate()
  {
   
    switch(attribut)
    {
      case 1:  c = color(#9B531C);  //Dirt
      break; 
      case 2: c = color(#567D46); //Grass
      break;
      case 3:  c = color(#9B7653); //Stone
      break;
      case 4:  c = color(60,random(50, 80),100); //Water 
      break;
      default: c = color(0,100,100); //Default Pink
      
    }
    
  }
  
}
