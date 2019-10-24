public class Terrain 
{
 color grass;
 color water;
 color deepwater;
 color stone;
 color snow;
 color dirt;

 
 Terrain()
 {
   grass = color(#7EC850);
   water =  color(#81A6E0);
   deepwater =  color(#3B54F2);
   stone =  color(#BCBCBC);
   snow =  color(#FAFAFA);
   dirt =  color(#E3B747);
  
 }
 
 color getType(color c)
 {
   
   if(c < color(45) )
   c = deepwater;
   else if(c < color(90))
   c = water;
   else if (c < color(135))
   c = dirt;
   else if (c < color(190))
   c = grass;
   else if (c < color(225))
   c = stone;
   else c = snow;

 
   
   return c;
 }
  
}
