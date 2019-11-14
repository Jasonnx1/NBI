public class Point {
    
   PVector pos;
   int givenAttribut;
   float moisture;
   
   Point(PVector p)
   {
     pos = p;
     givenAttribut = 0;    
   }
   
   
   void setAttribut(int att)
   {
     
     givenAttribut = att;
     
   }
   
   void setMoisture(float moi)
   {
     
     moisture = moi;
     
   }
   
   void display()
   {
     fill(0,100,100);
     ellipse(pos.x, pos.y, 5, 5);
     
   }
  
}
