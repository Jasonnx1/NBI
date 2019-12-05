class Grid
{
  
  int nCells;
  Cell[][] cells;
  Survivor man;
  
  Grid(int nCells_, PVector f)
  {
    
    nCells = nCells_;
    cells = new Cell[nCells][nCells];   
    man = new Survivor(f);
  }
  
  
  void split()
  {
    
    strokeWeight(2);
    stroke(0);
    
    float incrementx = (float)width/nCells;
    float incrementy = (float)height/nCells;    
    float posx = incrementx;
    float posy = incrementy;
   
    for (int x = 0; x < nCells; x++)
    {     
    //  line(posx,0 , posx, height);
      for (int y = 0; y < nCells; y++)
      {           
         
         cells[x][y] = new Cell(new PVector(posx - ((float)incrementx/2), posy - ((float)incrementy/2) ) );
     //    line(0,posy , width,posy);
         posy += incrementy;
      } 
      posx += incrementx;
      posy = incrementy;
    }
    
  }    
  
 void move(float x, float y, String att)
 {
   
   
   if(att == "Sand" || att == "Grass")
   {
        
     println("Moving to " + att + " " + getPos());
     man.move(x,y); 
     
   }
   else
   {
    
    println("Cannot go to " + att + "!"); 
     
   }
   
    
   
 }
 
 Cell nearestCell(PVector pos)
 {

     int w = width/nCells;
     int h = height/nCells;
     int x = (int)pos.x/w;
     int y = (int)pos.y/h;
  
     return cells[x][y];
 }
  
  
  String getPos()
  {
    
     int w = width/nCells;
     int h = height/nCells;
     int x = (int)man.pos.x/w;
     int y = (int)man.pos.y/h;
    
    
    
    return "[" + x + ","+ y + "]";
  }
  

}



   
