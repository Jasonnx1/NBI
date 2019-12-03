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
  
 void move(float x, float y, int att)
 {
   
   
   if(att == 0 || att == 1)
   {
     println("Moving to " + getPos());
    man.move(x,y); 
     
   }
   else
   {
     
    println("Cannot go there !"); 
     
   }
   
    
   
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



   