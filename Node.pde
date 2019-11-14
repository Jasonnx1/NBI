public class Node
{
  
  PVector pos;
  color c;
  int attribut;
  float moisture;
 
  Node()
  {  
    pos = new PVector(random(0, width), random(0, height) );   
    attribut = 3;
    moisture = 0;
  }
  
  void generate()
  {
   
    switch(attribut)
    {
      case 0:  c = color(13, 100, moisture);  //Sand
      break;
      case 1:  c = color(30, 100, moisture); //Grass
      break; 
      case 2:   c = color(0, 5, 52); //Stone
      break;
      case 3:  c = color(60,99, moisture); //Water 
      break;
      case 4: c = color(#EA2300); // Lava
      break;
      default: c = color(0,100,100); //Default Pink
      
    }
    
  }
  
  

  
}
